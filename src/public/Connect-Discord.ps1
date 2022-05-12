Function Connect-Discord {
    [cmdletbinding(
        DefaultParameterSetName = 'Rest'
    )]
    param (
        [Parameter(
            Mandatory,
            ParameterSetName = 'Rest'
        )]
        [switch]$RestClient,
        [Parameter(
            Mandatory,
            ParameterSetName = 'Socket'
        )]
        [switch]$SocketClient,
        [Discord.TokenType]$TokenType,
        [string]$Token,
        [switch]$Quiet
    )

    switch ($PSCmdlet.ParameterSetName) {
        'Rest' {
            $global:DiscordClient = [Discord.Rest.DiscordRestClient]::new()
        }
        'Socket' {
            $global:DiscordClient = [Discord.WebSocket.DiscordSocketClient]::new()
        }
    }
    $DiscordClient.LoginAsync($TokenType, $Token, $true).Wait()
    if (-not $Quiet.IsPresent) {
        $DiscordClient.LoginState
    }
}