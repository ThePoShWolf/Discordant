---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# New-DiscordGuildCommand

## SYNOPSIS
Create a Discord guild scoped command.

## SYNTAX

### byId (Default)
```
New-DiscordGuildCommand -GuildId <UInt64> [-Type <ApplicationCommandType>] -Name <String> -Description <String>
 [-CommandBuilder <SlashCommandBuilder>] [<CommonParameters>]
```

### byObj
```
New-DiscordGuildCommand -Guild <RestGuild> [-Type <ApplicationCommandType>] -Name <String>
 -Description <String> [-CommandBuilder <SlashCommandBuilder>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new guild scoped command.

For information on global vs guild commands, see: https://discord.com/developers/docs/interactions/application-commands#registering-a-command

## EXAMPLES

### Example 1
```powershell
New-DiscordGuildCommand -Guild (Get-DiscordGuild)[0] -Name 'hello' -Description 'Say hello to the bot' -CommandBuilder (
    New-DiscordSlashCommand -Name 'hello' -Description 'Say Hello to the bot'
)
```

Creates a Discord slash command called 'hello' with the default type of Slash.

## PARAMETERS

### -CommandBuilder
Can be created with New-DiscordSlashCommand

```yaml
Type: SlashCommandBuilder
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description of the command.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Guild
The guild to place the command in.

This can be created with Get-DiscordGuild

```yaml
Type: RestGuild
Parameter Sets: byObj
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GuildId
The ID of the guild.

```yaml
Type: UInt64
Parameter Sets: byId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the command.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The type of command. Defaults to Slash.

```yaml
Type: ApplicationCommandType
Parameter Sets: (All)
Aliases:
Accepted values: Slash, User, Message

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

### Discord.Rest.RestGuildCommand

## NOTES

## RELATED LINKS
