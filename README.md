# Discordant

**(fka Discord.Net.PowerShell)**

PowerShell module for managing Discord, including interactions. The module is built on top of [Discord.Net](https://github.com/discord-net/Discord.Net).

This module was originally designed to provide the bare minimum functionality to support a Discord bot in PowerShell. However, there seems to be an interest in Discord management from PowerShell so this module is being extended to provide additional functionality.

If there is a feature you need, please submit an issue and/or submit a PR.

## TODO

- User management
- Role management
- Webhook management
- Unit tests
- Your request here

## Functionality Overview

As of v0.1.2:

- Manage channels (add, get, remove, update)
- Get roles
- Get Guilds
- Manage guild commands (get, create, remove)
- Test and parse interactions
- Send a message or a file

## Installation

```powershell
Install-Module Discordant
```

## Authentication

At this time, all testing is done via a bot with full admin permissions to a test Discord server. You can create a bot in the [Discord developer portal](https://discord.com/developers) by first creating an application and then adding a bot to it. Then, go to the OAuth2 section to create a URL with the desired permissions which you will browse to and then add the bot to your server.

Authentication is done with:

```powershell
# Authenticate with bot token (from Discord dev portal):
Connect-Discord -RestClient -TokenType Bot -Token '<token>'
```

Other authentications methods are supported by the underlying SDK, but have not been tested. Please open an issue if you run into problems.

## Example usage

```powershell
# Get your guild (server):
$guild = Get-DiscordGuild | Where-Object { $_.Name -eq 'Bot Testing' }

# Get channels
Get-DiscordChannel -Guild $guild

# Create a slash command with a single parameter
New-DiscordGuildCommand -Name 'start-server' -Description 'Start a server' -Guild $guild -CommandBuilder (
    New-DiscordSlashCommand -Name 'start-server' -Description 'Start a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Type String)
    )
)
```

## Changelog

### 0.1.2 - Adds Send-DiscordFile

- New cmdlet enables sending of files to a Discord text channel.

### 0.1.1 - Fixes Get-DiscordGuildCommand -Guild

- See #2.

### 0.1.0 - Renamed to Discordant

- Added commands for channel management (get, set, new, remove)
- Added Get-DiscordRole
- Added output formats

### 0.0.1 - Initial Release
