Function Get-DiscordGuildCommand {
    [cmdletbinding(
        DefaultParameterSetName = 'all'
    )]
    param (
        [Parameter(
            Mandatory
        )]
        [UInt64]$GuildId,
        [Parameter(
            Mandatory,
            ParameterSetName = 'byId'
        )]
        [UInt64]$CommandId,
        [Discord.RequestOptions]$RequestOptions
    )
    $task = $DiscordClient.GetGuildApplicationCommands($GuildId, $RequestOptions)
    $task.Wait()
    switch ($PSCmdlet.ParameterSetName) {
        'all' {
            $task.Result
        }
        'byId' {
            $task.Result.Where({ $_.Id -eq $CommandId })
        }
    }
}