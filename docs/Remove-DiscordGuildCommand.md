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
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Command
{{ Fill Command Description }}

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
{{ Fill CommandId Description }}

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
{{ Fill Guild Description }}

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
{{ Fill GuildId Description }}

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
