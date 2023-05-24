---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# New-DiscordTextChannelProperties

## SYNOPSIS
Create a Discord TextChannelProperties object for use by New-DiscordChannel

## SYNTAX

```
New-DiscordTextChannelProperties [[-Topic] <String>] [-Nsfw] [[-SlowModeInterval] <Int32>] [-Archived]
 [-Locked] [[-Name] <String>] [[-Position] <Int32>] [[-CategoryId] <Int64>] [[-Overwrite] <Overwrite>]
 [<CommonParameters>]
```

## DESCRIPTION
Create a Discord TextChannelProperties object for use by New-DiscordChannel

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select -First 1
$tcp = New-TextChannelProperties -Position 0
New-DiscordChannel -Guild $guild -TextChannel -Name 'channel-name' -TextChannelProperties $tcp
```

This will create a channel called 'channel-name' with Position 0.

## PARAMETERS

### -Archived
Archives the channel.

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

### -CategoryId
The Id of the category (header) to place the channel.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Locked
Locks the channel.

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

### -Name
The name of the channel.

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

### -Nsfw
Considers the channel NSFW.

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

### -Overwrite
Applies permissions overwrites.

```yaml
Type: Overwrite
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Position
Sets the channel position.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SlowModeInterval
If non-zero, enables slow mode at the specified interval.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Topic
Sets the channel topic

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Discord.TextChannelProperties

## NOTES

## RELATED LINKS
