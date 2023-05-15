Function New-DiscordTextChannelProperties {
    [OutputType([Discord.TextChannelProperties])]
    [cmdletBinding()]
    param (
        [string]$Topic,
        [switch]$Nsfw,
        [int]$SlowModeInterval,
        [switch]$Archived,
        [switch]$Locked,
        [string]$Name,
        [int]$Position,
        [int64]$CategoryId,
        [Discord.Overwrite]$Overwrite
    )
    $props = [Discord.TextChannelProperties]::new()
    foreach ($key in $PSBoundParameters.Keys) {
        $props.$key = $PSBoundParameters[$key]
    }
    $props
}