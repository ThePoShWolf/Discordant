---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Get-DiscordGuildCommand

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### guildId-all (Default)
```
Get-DiscordGuildCommand -GuildId <UInt64> [-RequestOptions <RequestOptions>] [<CommonParameters>]
```

### guildId-byId
```
Get-DiscordGuildCommand -GuildId <UInt64> -CommandId <UInt64> [-RequestOptions <RequestOptions>]
 [<CommonParameters>]
```

### guildObj-byId
```
Get-DiscordGuildCommand -Guild <RestGuild> -CommandId <UInt64> [-RequestOptions <RequestOptions>]
 [<CommonParameters>]
```

### guildObj-all
```
Get-DiscordGuildCommand -Guild <RestGuild> [-RequestOptions <RequestOptions>] [<CommonParameters>]
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

### -CommandId
{{ Fill CommandId Description }}

```yaml
Type: UInt64
Parameter Sets: guildId-byId, guildObj-byId
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
Parameter Sets: guildObj-byId, guildObj-all
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
Parameter Sets: guildId-all, guildId-byId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestOptions
{{ Fill RequestOptions Description }}

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

### Discord.Rest.RestApplicationCommand

### Discord.Rest.RestApplicationCommand[]

### Discord.Rest.RestApplicationCommand[]

## NOTES

## RELATED LINKS
