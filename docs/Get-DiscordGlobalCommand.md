---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Get-DiscordGlobalCommand

## SYNOPSIS
Retrieve global commands for a bot.

## SYNTAX

### all (Default)
```
Get-DiscordGlobalCommand [-RequestOptions <RequestOptions>] [<CommonParameters>]
```

### byId
```
Get-DiscordGlobalCommand [-Id <UInt64>] [-RequestOptions <RequestOptions>] [<CommonParameters>]
```

## DESCRIPTION
Returns all global commands for a bot or global commands by ID.

The bot is inferred by how the module has authenticated.

## EXAMPLES

### Example 1
```powershell
Get-DiscordGlobalCommand
```

This will return all global commands for the bot.

### Example 2
```powershell
Get-DiscordGlobalCommand -Id '<id>'
```

Returns a specific global command.

This will return all global commands for the bot.

## PARAMETERS

### -Id
The global commands' Id

```yaml
Type: UInt64
Parameter Sets: byId
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Discord.Rest.RestApplicationCommand

### Discord.Rest.RestApplicationCommand[]

## NOTES

## RELATED LINKS
