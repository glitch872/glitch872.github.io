const mineflayer = require('mineflayer');
const Movements = require('mineflayer-pathfinder').Movements;
const pathfinder = require('mineflayer-pathfinder').pathfinder;
const { GoalBlock } = require('mineflayer-pathfinder').goals;

const config = require('./settings.json');
const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Bot Is Now Online')
});

app.listen(3000, () => {
  console.log('server started');
});

function createBot() {
   const bot = mineflayer.createBot({
      username: config['bot-account']['username'],
      password: config['bot-account']['password'],
      auth: config['bot-account']['type'],
      host: config.server.ip,
      port: config.server.port,
      version: config.server.version,
   });

   bot.loadPlugin(pathfinder);
   const mcData = require('minecraft-data')(bot.version);
   const defaultMove = new Movements(bot, mcData);
   bot.settings.colorsEnabled = false;

   bot.once('spawn', () => {
      console.log('\x1b[33m[BotLog] Bot joined to the server', '\x1b[0m');

      if (config.utils['auto-auth'].enabled) {
         console.log('[INFO] Started auto-auth module');

         var password = config.utils['auto-auth'].password;
         setTimeout(() => {
            bot.chat(`/register ${password} ${password}`);
            bot.chat(`/login ${password}`);
         }, 500);

         console.log(`[Auth] Authentification commands executed.`);
      }

      if (config.utils['chat-messages'].enabled) {
         console.log('[INFO] Started chat-messages module');
         var messages = config.utils['chat-messages']['messages'];

         if (config.utils['chat-messages'].repeat) {
            var delay = config.utils['chat-messages']['repeat-delay'];
            let i = 0;

            let msg_timer = setInterval(() => {
               bot.chat(`${messages[i]}`);

               if (i + 1 == messages.length) {
                  i = 0;
               } else i++;
            }, delay * 1000);
         } else {
            messages.forEach((msg) => {
               bot.chat(msg);
            });
         }
      }

      const pos = config.position;

      if (config.position.enabled) {
         console.log(
            `\x1b[32m[BotLog] Starting moving to target location (${pos.x}, ${pos.y}, ${pos.z})\x1b[0m`
         );
         bot.pathfinder.setMovements(defaultMove);
         bot.pathfinder.setGoal(new GoalBlock(pos.x, pos.y, pos.z));
      }

      if (config.utils['anti-afk'].enabled) {
         bot.setControlState('jump', true);
         if (config.utils['anti-afk'].sneak) {
            bot.setControlState('sneak', true);
         }
      }
   });

   bot.on('chat', (username, message) => {
      if (config.utils['chat-log']) {
         console.log(`[ChatLog] <${username}> ${message}`);
      }
    if (message === '.b-leave' && username === 'glitchkiller8721' || message === '.b-leave' && username === ShadowReptile) {
      throw new Error("Manual Abort Script");
    }
    if (message === '.b-myuser') {
      bot.chat(username)
    }
    if (message === '.b-help' && username !== 'Dinnerbone') {
      bot.chat('My commands are : .b-help .b-myuser')
    }
    if (message === '.b-test' && username === 'glitchkiller8721') {
      bot.chat('Test complete, eBot is online')
    }
    if (message === '.b-pos' && username === 'glitchkiller8721') {
      bot.chat('/minecraft:msg glitchkiller8721 My Pos has been logged into the console')
      app.get('/', (req, res) => {
        res.send('Bot Is Now Online')
      });
      console.log(
         `\x1b[32mBot is at location. ${bot.entity.position}\x1b[0m`
      )
    }
    if (message === '.b-skin-fix' && username === 'glitchkiller8721') {
      bot.chat('/skin glitchkiller8721')
      bot.chat('/minecraft:msg glitchkiller8721 Skin has been fixed')
    }
   });

   bot.on('goal_reached', () => {
      console.log(
         `\x1b[32m[BotLog] Bot arrived to target location. ${bot.entity.position}\x1b[0m`
      );
   });

   bot.on('death', () => {
      console.log(
         `\x1b[33m[BotLog] Bot has died and has respawned at ${bot.entity.position}`,
         '\x1b[0m'
      );
   });

   if (config.utils['auto-reconnect']) {
      bot.on('end', () => {
         setTimeout(() => {
            createBot();
         }, config.utils['auto-recconect-delay']);
      });
   }

   bot.on('kicked', (reason) =>
      console.log(
         '\x1b[33m',
         `[BotLog] Bot was kicked from the server. Reason: \n${reason}`,
         '\x1b[0m'
      )
   );
   bot.on('error', (err) =>
      console.log(`\x1b[31m[ERROR] ${err.message}`, '\x1b[0m')
   );
}

createBot();
