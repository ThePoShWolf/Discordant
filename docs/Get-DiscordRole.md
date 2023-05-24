---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Get-DiscordRole

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### guildObj-channelId
```
Get-DiscordRole -Guild <RestGuild> -RoleId <UInt64> [<CommonParameters>]
```

### guildObj-all
```
Get-DiscordRole -Guild <RestGuild> [<CommonParameters>]
```

### guildId-channelId
```
Get-DiscordRole -GuildId <UInt64> -RoleId <UInt64> [<CommonParameters>]
```

### guildId-all
```
Get-DiscordRole -GuildId <UInt64> [<CommonParameters>]
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

### -Guild
{{ Fill Guild Description }}

```yaml
Type: RestGuild
Parameter Sets: guildObj-channelId, guildObj-all
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
Parameter Sets: guildId-channelId, guildId-all
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleId
{{ Fill RoleId Description }}

```yaml
Type: UInt64
Parameter Sets: guildObj-channelId, guildId-channelId
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

### Discord.Rest.RestRole[]

### Discord.Rest.RestRole[]

### Discord.Rest.RestRole

### Discord.Rest.RestRole

## NOTES

## RELATED LINKS
