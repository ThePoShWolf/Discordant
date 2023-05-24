---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# New-DiscordGlobalCommand

## SYNOPSIS
Create a new Discord global scoped command.

## SYNTAX

```
New-DiscordGlobalCommand [[-Type] <ApplicationCommandType>] [-Name] <String> [-Description] <String>
 [<CommonParameters>]
```

## DESCRIPTION
Creates a new globally scoped command.

For information on global vs guild commands, see: https://discord.com/developers/docs/interactions/application-commands#registering-a-command

## EXAMPLES

### Example 1
```powershell
{{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Description
The description of the command.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the command. This is what shows up in Discord.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
Sets the command type.

```yaml
Type: ApplicationCommandType
Parameter Sets: (All)
Aliases:
Accepted values: Slash, User, Message

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

### Discord.Rest.RestGlobalCommand

## NOTES

## RELATED LINKS
