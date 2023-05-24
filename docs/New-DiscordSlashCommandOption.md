---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# New-DiscordSlashCommandOption

## SYNOPSIS
Create a slash command option for use by New-DiscordSlashCommand.

## SYNTAX

```
New-DiscordSlashCommandOption [-Name] <String> [[-Description] <String>] [-IsAutocomplete] [-Required]
 [[-Choices] <Hashtable>] [[-Type] <ApplicationCommandOptionType>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new SlashCommandOptionBuilder for use by the New-DiscordSlashCommand. This is what creates parameters for a slash command.

## EXAMPLES

### Example 1
```powershell
New-DiscordGuildCommand -Name 'get-status' -Description 'Get the status of a server' -Guild $guild -CommandBuilder (
    New-DiscordSlashCommand -Name 'get-status' -Description 'Get the status of a server' -Options @(
        (New-DiscordSlashCommandOption -Name 'server' -Description 'The selected server' -Type String)
    )
)
```

This creates a guild command called 'get-status' with a single string parameter called 'server'.

## PARAMETERS

### -Choices
This accepts a hashtable of choices.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description of the command option.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsAutocomplete
Allows the command option to auto complete.

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
The name of the command option.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Required
Makes the option required.

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

### -Type
The type of option.

One of the following: SubCommand, SubCommandGroup, String, Integer, Boolean, User, Channel, Role, Mentionable, Number, Attachment

```yaml
Type: ApplicationCommandOptionType
Parameter Sets: (All)
Aliases:
Accepted values: SubCommand, SubCommandGroup, String, Integer, Boolean, User, Channel, Role, Mentionable, Number, Attachment

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Discord.SlashCommandOptionBuilder

## NOTES

## RELATED LINKS
