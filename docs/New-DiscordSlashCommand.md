---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# New-DiscordSlashCommand

## SYNOPSIS
Create a Discord slash command for use by New-Discord*Command

## SYNTAX

```
New-DiscordSlashCommand [-Name] <String> [[-Description] <String>] [[-Options] <SlashCommandOptionBuilder[]>]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a Discord Slash command for use by the New-Discord*Commands. This uses SlashCommandBuild of the Discord.Net SDK.

## EXAMPLES

### Example 1
```powershell
New-DiscordGuildCommand -Guild (Get-DiscordGuild)[0] -Name 'hello' -Description 'Say hello to the bot' -CommandBuilder (
    New-DiscordSlashCommand -Name 'hello' -Description 'Say Hello to the bot'
)
```

Creates a Discord slash command called 'hello' with the default type of Slash.

## PARAMETERS

### -Description
The command's description.

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

### -Name
The command's name.

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

### -Options
Options (parameters) for the slash command.

Use the New-DiscordSlashCommandOption command.

```yaml
Type: SlashCommandOptionBuilder[]
Parameter Sets: (All)
Aliases: CommandOptions

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Discord.SlashCommandBuilder

## NOTES

## RELATED LINKS
