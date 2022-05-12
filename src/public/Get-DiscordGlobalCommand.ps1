Function Get-DiscordGlobalCommand {
    [cmdletbinding(
        DefaultParameterSetName = 'all'
    )]
    param (
        [Parameter(
            ParameterSetName = 'byId'
        )]
        [ValidateNotNullOrEmpty()]
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