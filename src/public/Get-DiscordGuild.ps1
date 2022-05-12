Function Get-DiscordGuild {
    [cmdletbinding(
        DefaultParameterSetName = 'all'
    )]
    param (
        [Parameter(
            ParameterSetName = 'byId'
        )]
        [ValidateNotNullOrEmpty()]
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