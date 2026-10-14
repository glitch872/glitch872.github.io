
# Glitch Prompt

A lightweight wrapper around cmd.exe that adds extra commands and shortcuts. Everything you can normally do in Command Prompt still works, with a handful of quality-of-life additions on top.

{GlitchPrompt by Cotton}  
C:\Users\you

## Features

- Directory shortcuts (~, ~1, ~2) for jumping to common folders

- Open File Explorer in your current directory

- Run programs without an admin prompt (when possible)

- Host a Minecraft LAN world publicly through a tunnel

- Self-updating, with an optional auto-update toggle

- Clean uninstall with a single command

- Optional minimal mode with just the basic shortcuts

## Installation

1. Download install.bat from https://glitch-bypass.com/terminal/

1. Place it on your Desktop. The installer checks its own location and will refuse to run anywhere else.

1. Run it. It will download the latest setup, build the terminal, and delete itself when finished.

On first launch you'll be asked whether to enable auto-update (Y/n, default Y).

### What gets installed

| Location                                          | Contents                                                                               |  
| Desktop\Art Project\.bat\CMD.bat | The terminal itself                                                                 |  
| Desktop\Art Project\.bat\log.bat    | File-listing helper script                                                        |  
| Desktop\SCMD.exe                         | Launcher that checks for updates, then starts the terminal |  
| %userprofile%\first-run-bat            | Marker file: first-run setup is done |  
| %userprofile%\no-update               | Marker file: auto-update is disabled |

## Commands

Type ? at any time to see the custom command list.

### Navigation

| Command | Description |  
| ~ | Jump to your user profile folder |  
| ~1 | Jump to %appdata% |  
| ~2 | Jump to C:\Windows\System32 |  
| ~~ | Open File Explorer in the current directory |  
| ls | Alias for dir /w |  
| clear | Alias for cls |  
| find | Prompts for a file name, then searches C:\ for it |

### Launching things

| Command | Description |  
| user-level | Lists the current folder, asks for a file name, and runs it without requesting admin rights. Only works with some programs. |  
| Discord | Finds and launches Discord without requiring admin rights |  
| exe | Downloads the bat-to-exe helper that converts a batch file to an .exe using IExpress |
### Networking

| Command | Description |  
| host | Opens a tunnel via pinggy.io so friends can join your Minecraft LAN world. Asks for a port (defaults to 25565). Press Enter at the password prompt. |

Note: host relies on a third-party service that I don't control. It may stop working at any time.

### Maintenance

| Command | Description |  
| update | Update the terminal to the latest version |  
| update-all | Update the launcher (SCMD.exe) and the terminal |  
| repair | Re-download the installer and reinstall |  
| auto-update | Toggle auto-update on or off |  
| min | Switch to the minimal version (only ~, ~1, ~2, ls, clear, ?, update) |  
| uninstall | Remove the terminal and all related files |

### Misc

| Command | Description |  
| Boot | Launches a fresh copy of CMD.bat from the install folder inside the current session |  
| ? | Show the custom command list |

## Updating

With auto-update on, the terminal checks for a new version each time it starts. To turn it off, run auto-update. You can always update manually with update.

## Uninstalling

Run uninstall inside the terminal. It removes the Art Project folder, the marker files, and SCMD.exe.

## Troubleshooting

- "This installer must be run from your Desktop folder": move install.bat to your Desktop (the real one, which may be inside OneDrive) and run it again.

- The prompt won't start after an update: run CMD.bat directly and use update, or run repair, or reinstall.

- user-level doesn't work for a program: some programs require admin rights no matter what.

## Credits

- Made by Cotton

- yep.bat (batch to exe via IExpress) is included essentially unmodified from code found online; the original author is unknown.
