---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Send-DiscordMessage

## SYNOPSIS
Send a message.

## SYNTAX

### guildObj-channelId
```
Send-DiscordMessage -Guild <RestGuild> -ChannelId <UInt64> [-RequestOptions <RequestOptions>]
 -MessageText <String> [<CommonParameters>]
```

### guildId-channelId
```
Send-DiscordMessage -GuildId <UInt64> -ChannelId <UInt64> [-RequestOptions <RequestOptions>]
 -MessageText <String> [<CommonParameters>]
```

### channelObj
```
Send-DiscordMessage -Channel <RestTextChannel> [-RequestOptions <RequestOptions>] -MessageText <String>
 [<CommonParameters>]
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

### -Channel
{{ Fill Channel Description }}

```yaml
Type: RestTextChannel
Parameter Sets: channelObj
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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
Parameter Sets: guildObj-channelId
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
Parameter Sets: guildId-channelId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MessageText
{{ Fill MessageText Description }}

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

### Discord.Rest.RestUserMessage

## NOTES

## RELATED LINKS
