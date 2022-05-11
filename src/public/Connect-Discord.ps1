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
    $task = $DiscordClient.LoginAsync($TokenType, $Token, $true)
    $task.Wait()
    if (-not $Quiet.IsPresent) {
        $DiscordClient.LoginState
    }
}