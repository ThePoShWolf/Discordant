New-DiscordGuildCommand -Guild (Get-DiscordGuild)[0] -CommandBuilder (
    New-DiscordSlashCommand -Name 'get-status' -Description 'Get the status of a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The select server' -Type integer -Choices @{
            rust = 1
        })
    )
)