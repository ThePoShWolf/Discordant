---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Get-DiscordChannel

## SYNOPSIS
Retrieve Discord channels for a given Guild.

## SYNTAX

### guildObj-channelId
```
Get-DiscordChannel -Guild <RestGuild> -ChannelId <UInt64> [-RequestOptions <RequestOptions>]
 [<CommonParameters>]
```

### guildObj-all
```
Get-DiscordChannel -Guild <RestGuild> [-RequestOptions <RequestOptions>] [<CommonParameters>]
```

### guildId-channelId
```
Get-DiscordChannel -GuildId <UInt64> -ChannelId <UInt64> [-RequestOptions <RequestOptions>]
 [<CommonParameters>]
```

### guildId-all
```
Get-DiscordChannel -GuildId <UInt64> [-RequestOptions <RequestOptions>] [<CommonParameters>]
```

## DESCRIPTION
For a given guild (server) returns either all channels or a channel by ID.

The guild can be specified by a guild object (Get-DiscordGuild) or by ID.

## EXAMPLES

### Example 1
```powershell
{{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ChannelId
{{ Fill ChannelId Description }}

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

### Discord.Rest.RestGuildChannel[]

### Discord.Rest.RestGuildChannel[]

### Discord.Rest.RestGuildChannel

### Discord.Rest.RestGuildChannel

## NOTES

## RELATED LINKS
