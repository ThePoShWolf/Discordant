Function Get-DiscordGlobalCommand {
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
            $DiscordClient.GetGlobalApplicationCommandsAsync($RequestOptions).Wait().Result
        }
        'byId' {
            $DiscordClient.GetGlobalApplicationCommandAsync($Id, $RequestOptions).Wait().Result
        }
    }
}