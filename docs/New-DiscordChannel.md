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
Parameter Sets: guildObj-voice, guildObj-text
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
Parameter Sets: guildId-voice, guildId-text
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

### -TextChannel
{{ Fill TextChannel Description }}

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
{{ Fill TextChannelProperties Description }}

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
{{ Fill VoiceChannel Description }}

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
{{ Fill VoiceChannelProperties Description }}

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
