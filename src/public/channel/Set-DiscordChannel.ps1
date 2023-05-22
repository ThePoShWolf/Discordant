Function Set-DiscordChannel {
    [cmdletbinding(
        DefaultParameterSetName = 'notype'
    )]
    param (
        # Category, Text, Voice
        [Parameter(
            ParameterSetName = 'textChannel',
            Mandatory
        )]
        [Parameter(
            ParameterSetName = 'voiceChannel',
            Mandatory
        )]
        [Parameter(
            ParameterSetName = 'notype',
            Mandatory
        )]
        [UInt64]$ChannelId,
        # Category, Text, Voice
        [Parameter(
            ParameterSetName = 'textChannel',
            Mandatory
        )]
        [Parameter(
            ParameterSetName = 'voiceChannel',
            Mandatory
        )]
        [Parameter(
            ParameterSetName = 'notype',
            Mandatory
        )]
        [UInt64]$GuildId,
        # Category, Text, Voice
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [Parameter(
            ParameterSetName = 'voiceChannel'
        )]
        [Parameter(
            ParameterSetName = 'notype'
        )]
        [string]$Name,
        # Category, Text, Voice
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [Parameter(
            ParameterSetName = 'voiceChannel'
        )]
        [Parameter(
            ParameterSetName = 'notype'
        )]
        [int]$Position,
        # Category, Text, Voice
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [Parameter(
            ParameterSetName = 'voiceChannel'
        )]
        [Parameter(
            ParameterSetName = 'notype'
        )]
        [UInt64]$CategoryId,
        # Category, Text, Voice
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [Parameter(
            ParameterSetName = 'voiceChannel'
        )]
        [Parameter(
            ParameterSetName = 'notype'
        )]
        [Discord.OverwritePermissions]$PermissionOverwrites,
        # Text
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [string]$Topic,
        # Text
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [bool]$IsNsfw,
        # Text
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [int]$SlowModeInterval,
        # Text
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [bool]$Locked,
        # Text
        [Parameter(
            ParameterSetName = 'textChannel'
        )]
        [Discord.ThreadArchiveDuration]$AutoArchiveDuration,
        # Voice
        [Parameter(
            ParameterSetName = 'voiceChannel'
        )]
        [int]$Bitrate,
        # Voice
        [Parameter(
            ParameterSetName = 'voiceChannel'
        )]
        [int]$UserLimit,
        # Voice
        [Parameter(
            ParameterSetName = 'voiceChannel'
        )]
        [string]$RTCRegion,
        [Discord.RequestOptions]$RequestOptions = $null,
        [switch]$Async
    )
    # Get the channel
    $channel = Get-DiscordChannel -ChannelId $ChannelId -GuildId $GuildId
    Write-Verbose "Parameter set: $($PSCmdlet.ParameterSetName)"
    # start the script block string array
    $scriptBlockStr = @('param ($props)')
    # collect the valid properties
    switch ($PSCmdlet.ParameterSetName) {
        'notype' {
            $cp = [Discord.GuildChannelProperties]::new()
        }
        'textChannel' {
            $cp = [Discord.TextChannelProperties]::new()
        }
        'voiceChannel' {
            $cp = [Discord.VoiceChannelProperties]::new()
        }
    }
    # append the array
    foreach ($key in ($PSBoundParameters.Keys | Where-Object { $cp.PSObject.Properties.Name -contains $_ })) {
        $scriptBlockStr += "`$props.$key = `$$key"
    }
    # build the script block
    $sb = [scriptblock]::Create(($scriptBlockStr -join "`n"))
    # create the action
    $action = [System.Action[Discord.TextChannelProperties]]$sb
    # call modifyAsync
    $task = $channel.ModifyAsync($action)
    if (-not $Async.IsPresent) {
        $task.Wait()
    }
}