Function Parse-DiscordInteraction {
    [OutputType([Discord.Rest.RestSlashCommand])]
    [cmdletbinding()]
    param (
        [string]$PublicKey,
        [string]$Signature,
        [string]$TimeStamp,
        [string]$Body
    )
    $task = $DiscordClient.ParseHttpInteractionAsync($PublicKey, $Signature, $TimeStamp, $Body)
    $task.Wait()
    $task.Result
}