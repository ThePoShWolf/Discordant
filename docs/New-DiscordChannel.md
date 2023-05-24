---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# New-DiscordChannel

## SYNOPSIS
Create a new Discord channel.

## SYNTAX

### guildObj-voice
```
New-DiscordChannel -Guild <RestGuild> [-VoiceChannel] [-VoiceChannelProperties <VoiceChannelProperties>]
 -Name <String> [<CommonParameters>]
```

### guildObj-text
```
New-DiscordChannel -Guild <RestGuild> [-TextChannel] [-TextChannelProperties <TextChannelProperties>]
 -Name <String> [<CommonParameters>]
```

### guildId-voice
```
New-DiscordChannel -GuildId <UInt64> [-VoiceChannel] [-VoiceChannelProperties <VoiceChannelProperties>]
 -Name <String> [<CommonParameters>]
```

### guildId-text
```
New-DiscordChannel -GuildId <UInt64> [-TextChannel] [-TextChannelProperties <TextChannelProperties>]
 -Name <String> [<CommonParameters>]
```

## DESCRIPTION
This creates a Discord channel. The channel being a voice or text channel.

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select-Object -First 1
New-DiscordChannel -Guild $guild -TextChannel -Name 'discordant-channel'
```

Creates a new text channel called 'discordant-channel'

## PARAMETERS

### -Guild
The guild.

This can be created with Get-DiscordGuild

```yaml
Type: RestGuild
Parameter Sets: guildObj-voice, guildObj-text
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GuildId
The Id of the guild.

```yaml
Type: UInt64
Parameter Sets: guildId-voice, guildId-text
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the channel.

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

### -TextChannel
If specified, creates a text channel.

```yaml
Type: SwitchParameter
Parameter Sets: guildObj-text, guildId-text
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TextChannelProperties
This takes a TextChannelProperties object which can be created with New-DiscordTextChannelProperties.

```yaml
Type: TextChannelProperties
Parameter Sets: guildObj-text, guildId-text
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VoiceChannel
If specified, creates a voice channel.

```yaml
Type: SwitchParameter
Parameter Sets: guildObj-voice, guildId-voice
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VoiceChannelProperties
This takes a VoiceChannelProperties object which can be created with New-DiscordVoiceChannelProperties.

```yaml
Type: VoiceChannelProperties
Parameter Sets: guildObj-voice, guildId-voice
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

### Discord.Rest.RestTextChannel

### Discord.Rest.RestTextChannel

### Discord.Rest.RestVoiceChannel

### Discord.Rest.RestVoiceChannel

## NOTES

## RELATED LINKS
