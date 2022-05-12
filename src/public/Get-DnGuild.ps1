Function Get-DnGuild {
    [cmdletbinding(
        DefaultParameterSetName = 'all'
    )]
    param (
        [Parameter(
            ParameterSetName = 'byId'
        )]
        [UInt64]$Id,
        [Discord.RequestOptions]$RequestOptions = $null
    )
    switch ($PSCmdlet.ParameterSetName) {
        'all' {
            $task = $DiscordClient.GetGuildsAsync($RequestOptions)
        }
        'byId' {
            $task = $DiscordClient.GetGuildAsync($Id, $RequestOptions)
        }
    }
    $task.Wait()
    $task.Result
}