---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Set-DiscordChannel

## SYNOPSIS
Update a Discord channel.

## SYNTAX

### notype (Default)
```
Set-DiscordChannel -ChannelId <UInt64> -GuildId <UInt64> [-Name <String>] [-Position <Int32>]
 [-CategoryId <UInt64>] [-PermissionOverwrites <OverwritePermissions>] [-RequestOptions <RequestOptions>]
 [-Async] [<CommonParameters>]
```

### voiceChannel
```
Set-DiscordChannel -ChannelId <UInt64> -GuildId <UInt64> [-Name <String>] [-Position <Int32>]
 [-CategoryId <UInt64>] [-PermissionOverwrites <OverwritePermissions>] [-Bitrate <Int32>] [-UserLimit <Int32>]
 [-RTCRegion <String>] [-RequestOptions <RequestOptions>] [-Async] [<CommonParameters>]
```

### textChannel
```
Set-DiscordChannel -ChannelId <UInt64> -GuildId <UInt64> [-Name <String>] [-Position <Int32>]
 [-CategoryId <UInt64>] [-PermissionOverwrites <OverwritePermissions>] [-Topic <String>] [-IsNsfw <Boolean>]
 [-SlowModeInterval <Int32>] [-Locked <Boolean>] [-AutoArchiveDuration <ThreadArchiveDuration>]
 [-RequestOptions <RequestOptions>] [-Async] [<CommonParameters>]
```

## DESCRIPTION
Updates a Discord channel.

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select -First 1
$channel = Get-DiscordChannel -Guild $guild
Set-DiscordChannel -GuildId $guild.Id -ChannelId $channel.Id -Topic 'new topic'
```

Updates the topic of a channel.

## PARAMETERS

### -Async
Runs the command async.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoArchiveDuration
Sets the auto archive duration for a text channel.

Values: OneHour, OneDay, ThreeDays, OneWeek

```yaml
Type: ThreadArchiveDuration
Parameter Sets: textChannel
Aliases:
Accepted values: OneHour, OneDay, ThreeDays, OneWeek

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Bitrate
Sets the bitrate for a voice channel.

```yaml
Type: Int32
Parameter Sets: voiceChannel
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CategoryId
Sets the channel's category.

```yaml
Type: UInt64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChannelId
The channel Id.

```yaml
Type: UInt64
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GuildId
The guild Id.

```yaml
Type: UInt64
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsNsfw
Enables or disables the NSFW flag.

```yaml
Type: Boolean
Parameter Sets: textChannel
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Locked
Sets the locked flag.

```yaml
Type: Boolean
Parameter Sets: textChannel
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Sets the channel name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PermissionOverwrites
Applies permissions overwrites.

```yaml
Type: OverwritePermissions
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Position
Sets the channel's position.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RTCRegion
Sets a voice channel's region.

```yaml
Type: String
Parameter Sets: voiceChannel
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestOptions
This is a standard Discord API option.

```yaml
Type: RequestOptions
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SlowModeInterval
Sets a text channel's slow mode interval.

If 0, disables slow mode.

```yaml
Type: Int32
Parameter Sets: textChannel
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Topic
Sets the channel's topic.

```yaml
Type: String
Parameter Sets: textChannel
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserLimit
Sets a voice channel's user limit.

```yaml
Type: Int32
Parameter Sets: voiceChannel
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
