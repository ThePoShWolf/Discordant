Function Get-DiscordGuild {
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
            $DiscordClient.GetGuildsAsync($RequestOptions).Wait().Result
        }
        'byId' {
            $DiscordClient.GetGuildAsync($Id, $RequestOptions).Wait().Result
        }
    }
}