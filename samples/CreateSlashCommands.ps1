New-DiscordGuildCommand -Guild (Get-DiscordGuild)[0] -CommandBuilder (
    New-DiscordSlashCommand -Name 'get-status' -Description 'Get the status of a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Type String -Choices @{
            valheim        = 1
            conanExiles    = 2
            skyrimTogether = 3
        })
    )
)

New-DiscordGuildCommand -Name 'get-status' -Description 'Get the status of a server' -GuildId $guild.Id -CommandBuilder (
    New-DiscordSlashCommand -Name 'get-status' -Description 'Get the status of a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Type String -Choices @{
            valheim        = 'valheim'
            conanExiles    = 'conanexiles'
            skyrimTogether = 'skyrimtogether'
        })
    )
)

New-DiscordGuildCommand -Name 'start-server' -Description 'Start a server' -GuildId $guild.Id -CommandBuilder (
    New-DiscordSlashCommand -Name 'start-server' -Description 'Start a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Required -Type String -Choices @{
            valheim        = 'valheim'
            conanExiles    = 'conanexiles'
            skyrimTogether = 'skyrimtogether'
        })
    )
)

New-DiscordGuildCommand -Name 'stop-server' -Description 'Stop a server' -GuildId $guild.Id -CommandBuilder (
    New-DiscordSlashCommand -Name 'stop-server' -Description 'Stop a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Required -Type String -Choices @{
            valheim        = 'valheim'
            conanExiles    = 'conanexiles'
            skyrimTogether = 'skyrimtogether'
        })
    )
)

New-DiscordGuildCommand -Guild (Get-DiscordGuild)[1] -Name 'update-status' -Description 'Updates game server statuses' -CommandBuilder (
    New-DiscordSlashCommand -Name 'update-status' -Description 'Updates game server statuses'
)

New-DiscordGuildCommand -Guild (Get-DiscordGuild)[0] -Name 'get-help' -Description 'Returns the bot help' -CommandBuilder (
    New-DiscordSlashCommand -Name 'get-help' -Description 'Returns the bot help'
)

New-DiscordGuildCommand -Guild (Get-DiscordGuild)[1] -Name 'test-command' -Description 'command testing' -CommandBuilder (
    New-DiscordSlashCommand -Name 'test-command' -Description 'command testing'
)

New-DiscordGuildCommand -Guild (Get-DiscordGuild)[0] -CommandBuilder (
    New-DiscordSlashCommand -Name 'hello' -Description 'Say Hello to the bot'
)

New-DiscordGuildCommand -Guild (Get-DiscordGuild)[0] -CommandBuilder (
    New-DiscordSlashCommand -Name 'stop-server' -Description 'Stops the server'
)

New-DiscordGuildCommand -Guild (Get-DiscordGuild)[0] -CommandBuilder (
    New-DiscordSlashCommand -Name 'start-server' -Description 'Starts the server'
)


New-DiscordGuildCommand -Name 'get-status' -Description 'Get the status of a server' -GuildId $guild.Id -CommandBuilder (
    New-DiscordSlashCommand -Name 'get-status' -Description 'Get the status of a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Type String)
    )
)

New-DiscordGuildCommand -Name 'start-server' -Description 'Start a server' -GuildId $guild.Id -CommandBuilder (
    New-DiscordSlashCommand -Name 'start-server' -Description 'Start a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Type String)
    )
)

New-DiscordGuildCommand -Name 'hello3' -Description "Say hello to the v3 bot" -Guild (Get-DiscordGuild)[0] -CommandBuilder (
    New-DiscordSlashCommand -Name 'hello3' -Description 'Say Hello to the v3 bot'
)

New-DiscordGuildCommand -Name 'test3' -Description "Tests the v3 bot" -Guild (Get-DiscordGuild)[0] -CommandBuilder (
    New-DiscordSlashCommand -Name 'test3' -Description 'Tests the v3 bot'
)