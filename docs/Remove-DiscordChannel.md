---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Remove-DiscordChannel

## SYNOPSIS
Delete a Discord channel.

## SYNTAX

### guildObj
```
Remove-DiscordChannel -Guild <RestGuild> -ChannelId <UInt64> [-Async] [<CommonParameters>]
```

### guildId
```
Remove-DiscordChannel -GuildId <String> -ChannelId <UInt64> [-Async] [<CommonParameters>]
```

## DESCRIPTION
Deletes a Discord channel.

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select -First 1
$channel = Get-DiscordChannel -Guild $guild | Select -First 1
Remove-DiscordChannel -Guild $guild -ChannelId $channel.ChannelId
```

Removes the first channel in the first guild.

## PARAMETERS

### -Async
If specified, runs the command async.

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

### -ChannelId
The Id of the channel.

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

### -Guild
The guild.

Can be created with Get-DiscordGuild.

```yaml
Type: RestGuild
Parameter Sets: guildObj
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GuildId
The Id of the guild.

```yaml
Type: String
Parameter Sets: guildId
Aliases:

Required: True
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
