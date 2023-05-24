---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# New-DiscordVoiceChannelProperties

## SYNOPSIS
Create a Discord VoiceChannelProperties object for use by New-DiscordChannel

## SYNTAX

```
New-DiscordVoiceChannelProperties [[-Bitrate] <Int32>] [[-CategoryId] <UInt64>] [[-Name] <String>]
 [[-PermissionOverwrites] <Overwrite[]>] [[-Position] <Int32>] [[-RTCRegion] <String>] [[-UserLimit] <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Create a Discord VoiceChannelProperties object for use by New-DiscordChannel

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select -First 1
$vcp = New-VoiceChannelProperties -Position 0
New-DiscordChannel -Guild $guild -VoiceChannel -Name 'channel-name' -TextChannelProperties $vcp
```

This will create a channel called 'channel-name' with Position 0.

## PARAMETERS

### -Bitrate
The channel's bitrate.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CategoryId
The channel's Category (header)

```yaml
Type: UInt64
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The channel's name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PermissionOverwrites
Applys permission overwrites.

```yaml
Type: Overwrite[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Position
The channel's position.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RTCRegion
The channel's region.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserLimit
The channel's user limit.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Discord.VoiceChannelProperties

## NOTES

## RELATED LINKS
