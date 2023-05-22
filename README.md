# Discordant

**(fka Discord.Net.PowerShell)**

PowerShell module for managing Discord, including interactions.

This module was originally designed to provide the bare minimum functionality to support a Discord bot in PowerShell. However, there seems to be an interest in Discord management from PowerShell so this module is being extended to provide additional functionality.

If there is a feature you need, please submit an issue and/or submit a PR.

## TODO

Prioritized:

- Add docs (PlatyPS)

Other:

- User management
- Role management
- Webhook management
- Per type channel management (category, text, voice)
- Your request here

## Funtionality Overview

As of v0.1.0:

- Manage channels (add, get, remove, update)
- Get roles
- Get Guilds
- Manage guild commands (get, create, remove)
- Test and parse interactions
- Send a message

## Installation

```powershell
Install-Module Discordant
```

## Authentication

At this time, all testing is done via a bot with full admin permissions to a test Discord server. When the docs are written, each cmdlet will include the required permissions in order to execute.

Authentication is done with:

```powershell
# Authenticate with bot token (from Discord dev portal):
Connect-Discord -RestClient -TokenType Bot -Token '<token>'
```

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

### 0.1.0 - Renamed to Discordant

- Added commands for channel management (get, set, new, remove)
- Added Get-DiscordRole
- Added output formats

### 0.0.1 - Initial Release
