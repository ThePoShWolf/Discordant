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
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
{{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Async
{{ Fill Async Description }}

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
{{ Fill AutoArchiveDuration Description }}

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
{{ Fill Bitrate Description }}

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
{{ Fill CategoryId Description }}

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
{{ Fill ChannelId Description }}

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
{{ Fill GuildId Description }}

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
{{ Fill IsNsfw Description }}

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
{{ Fill Locked Description }}

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
{{ Fill Name Description }}

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
{{ Fill PermissionOverwrites Description }}

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
{{ Fill Position Description }}

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
{{ Fill RTCRegion Description }}

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
{{ Fill RequestOptions Description }}

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
{{ Fill SlowModeInterval Description }}

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
{{ Fill Topic Description }}

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
{{ Fill UserLimit Description }}

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
