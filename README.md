# Discord.Net.PowerShell

PowerShell wrapper for [Discord.Net](https://github.com/discord-net/Discord.Net).

This module was originally developed for personal use, but after presenting at the PowerShell Summit 2023 about a Discord Bot built in Azure Functions, I decided to rush this out and publish it. It has a lot of rough edges, but supports enough things to manage a Discord bot. More functionality and polish will be added.

PRs encouraged!

## Installation

```powershell
Install-Module Discord.Net.PowerShell
```

## Example usage

```powershell
# Authenticate with bot token (from Discord dev portal):
Connect-Discord -RestClient -TokenType Bot -Token '<token>'

# Get your guild (server):
$guild = Get-DiscordGuild | Where-Object { $_.Name -eq 'Bot Testing' }

# Create a slash command with no parameters
New-DiscordGuildCommand -Name 'hello' -Description "Say hello to the bot" -Guild $guild -CommandBuilder (
    New-DiscordSlashCommand -Name 'hello' -Description 'Say Hello to the bot'
)

# Create a slash command with a single parameter
New-DiscordGuildCommand -Name 'start-server' -Description 'Start a server' -Guild $guild -CommandBuilder (
    New-DiscordSlashCommand -Name 'start-server' -Description 'Start a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Type String)
    )
)
```