Function Test-DiscordInteraction {
    [OutputType([bool])]
    [cmdletbinding()]
    param (
        [string]$PublicKey,
        [string]$Signature,
        [string]$TimeStamp,
        [string]$Body
    )
    if (-not (Get-Variable -Name DiscordClient -Scope Global -ErrorAction Ignore)) {
        $DiscordClient = [Discord.Rest.DiscordRestClient]::new()
    }
    $DiscordClient.IsValidHttpInteraction($PublicKey, $Signature, $TimeStamp, $Body)
}