Function New-DiscordGuildCommand {
    [cmdletbinding()]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'byId'
        )]
        [ValidateNotNullOrEmpty()]
        [UInt64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'byObj'
        )]
        [ValidateNotNullOrEmpty()]
        [Discord.Rest.RestGuild]$Guild,
        [Discord.SlashCommandBuilder]$CommandBuilder
    )

    if ($PSCmdlet.ParameterSetName -eq 'byId') {
        $Guild = Get-DiscordGuild -Id $GuildId
    }

    $task = $Guild.CreateApplicationCommandAsync($CommandBuilder.Build())
    $task.Wait()
    $task.Result
}