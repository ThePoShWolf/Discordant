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
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
{{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CommandBuilder
{{ Fill CommandBuilder Description }}

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
{{ Fill Description Description }}

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
{{ Fill Guild Description }}

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
{{ Fill GuildId Description }}

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
{{ Fill Name Description }}

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
{{ Fill Type Description }}

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
