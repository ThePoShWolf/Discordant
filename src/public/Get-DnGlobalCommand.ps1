Function Get-DnGlobalCommand {
    [cmdletbinding(
        DefaultParameterSetName = 'all'
    )]
    param (
        [Parameter(
            ParameterSetName = 'byId'
        )]
        [UInt64]$Id,
        [Discord.RequestOptions]$RequestOptions
    )
    switch ($PSCmdlet.ParameterSetName) {
        'all' {
            $task = $DiscordClient.GetGlobalApplicationCommandsAsync($RequestOptions)
        }
        'byId' {
            $task = $DiscordClient.GetGlobalApplicationCommandAsync($Id, $RequestOptions)
        }
    }
    $task.Wait()
    $task.Result
}