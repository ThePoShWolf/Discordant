---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Remove-DiscordGuildCommand

## SYNOPSIS
Delete a Discord guild scoped bot command.

## SYNTAX

### guildId-commandId
```
Remove-DiscordGuildCommand -GuildId <UInt64> -CommandId <UInt64> [<CommonParameters>]
```

### guildObj-commandId
```
Remove-DiscordGuildCommand -Guild <RestGuild> -CommandId <UInt64> [<CommonParameters>]
```

### commandObj
```
Remove-DiscordGuildCommand -Command <RestGuildCommand> [<CommonParameters>]
```

## DESCRIPTION
Removes a guild scoped command.

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select -First 1
$guildCmds = Get-DiscordGuildCommand -Guild $guild
Remove-DiscordGlobalCommand -Guild $guild -CommandId $guildCmds[0].Id
```

Removes the first guild command from the first guild.

## PARAMETERS

### -Command
The command.

Can be created with Get-DiscordGuildCommand.

```yaml
Type: RestGuildCommand
Parameter Sets: commandObj
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CommandId
The Id of the command.

```yaml
Type: UInt64
Parameter Sets: guildId-commandId, guildObj-commandId
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
Parameter Sets: guildObj-commandId
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
Type: UInt64
Parameter Sets: guildId-commandId
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
