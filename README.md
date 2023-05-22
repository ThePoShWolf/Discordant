# Discordant

**(fka Discord.Net.PowerShell)**

PowerShell module for managing Discord, including interactions.

This module was originally developed for personal use, but after presenting at the PowerShell Summit 2023 about a Discord Bot built in Azure Functions, I decided to rush this out and publish it. It has a lot of rough edges, but supports enough things to manage a Discord bot. More functionality and polish will be added.

PRs encouraged!

## Installation

```powershell
Install-Module Discordant
```

## Example usage

```powershell
# Authenticate with bot token (from Discord dev portal):
Connect-Discord -RestClient -TokenType Bot -Token '<token>'

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
