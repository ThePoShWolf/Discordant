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
Sends a message to a Discord channel.

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select -First 1
$channels = Get-DiscordChannel -Guild $guild
Send-Message -Guild $guild -ChannelId $channels[0].Id -MessageText 'Hello from Discordant'
```

Sends a message to the first channel of the first guild.

## PARAMETERS

### -Channel
The channel.

Can be created with Get-DiscordChannel.

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
The channel Id.

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
The guild.

Can be created with Get-DiscordGuild.

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
The guild Id.

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
The message to send.

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

### Discord.Rest.RestUserMessage

## NOTES

## RELATED LINKS
