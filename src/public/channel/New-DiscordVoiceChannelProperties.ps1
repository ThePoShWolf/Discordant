Function New-DiscordVoiceChannelProperties {
    [OutputType([Discord.VoiceChannelProperties])]
    [cmdletBinding()]
    param (
        [int]$Bitrate,
        [UInt64]$CategoryId,
        [string]$Name,
        [Discord.Overwrite[]]$PermissionOverwrites,
        [int]$Position,
        [string]$RTCRegion,
        [int]$UserLimit
    )
    $props = [Discord.VoiceChannelProperties]::new()
    foreach ($key in $PSBoundParameters.Keys) {
        $props.$key = $PSBoundParameters[$key]
    }
    $props
}