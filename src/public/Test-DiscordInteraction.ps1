Function Test-DiscordInteraction {
    [OutputType([bool])]
    [cmdletbinding()]
    param (
        [string]$PublicKey,
        [string]$Signature,
        [string]$TimeStamp,
        [string]$Body
    )
    $DiscordClient.IsValidHttpInteraction($PublicKey, $Signature, $TimeStamp, $Body)
}