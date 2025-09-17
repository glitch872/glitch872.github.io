const express = require('express');
const app = express();
const cors = require('cors');
const port = 3000;

app.use(cors());

async function getProfileData(userId, pronouns) {
  let member = null;

  for (const guild of client.guilds.cache.values()) {
    try {
      member = await guild.members.fetch(userId).catch(() => null);
      if (member) break;
    } catch {
    }
  }

  if (!member) return null;

  const presence = member.presence;

  const customStatusActivity = presence?.activities.find(a => a.type === 4);

  return {
    username: member.user.displayName,
    discriminator: member.user.discriminator,
    avatar: member.user.displayAvatarURL({ format: 'png', size: 128 }),
    badges: member.user.flags?.toArray() || [],
    presence: presence ? {
      status: presence.status,
      activities: presence.activities.map(activity => ({
        name: activity.name,
        type: activity.type,
        url: activity.url,
        details: activity.details,
        state: activity.state,
        timestamps: activity.timestamps,
        emoji: activity.emoji,
      })),
      clientStatus: presence.clientStatus,
    } : null,
    customStatus: customStatusActivity?.state || null,
    pronouns,
  };
}

app.get('/profile', async (req, res) => {
    const userId = '759520546286731264';
    const pronouns = "He/Him You're gay btw";
    const profileData = await getProfileData(userId, pronouns);
    if (!profileData) {
        return res.status(404).json({ error: 'User not found in any guilds the bot is in' });
    }
    res.json(profileData);
});

app.get('/events', async (req, res) => {
  res.setHeader('Content-Type', 'text/event-stream');
  res.setHeader('Cache-Control', 'no-cache');
  res.setHeader('Connection', 'keep-alive');

  const send = async () => {
    const profileData = await getProfileData();
    if (profileData) {
      res.write(`data: ${JSON.stringify(profileData)}\n\n`);
    }
  };

  await send();
  const interval = setInterval(send, 5000);

  req.on('close', () => clearInterval(interval));
});

app.listen(port, '0.0.0.0', () => {
  console.log(`Profile API running on port ${port}`);
});

