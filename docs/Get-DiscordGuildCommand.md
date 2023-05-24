---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Get-DiscordGuildCommand

## SYNOPSIS
Retrieve Discord Guild scoped commands for a guild.

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
Returns all guild scoped commands that are specific to the bot.

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select-Object -First 1
Get-DiscordGuildCommand -Guild $guild
```

Returns all guild commands for the $guild.

### Example 2
```powershell
$guild = Get-DiscordGuild | Select-Object -First 1
Get-DiscordGuildCommand -GuildId 'guildid' -CommandId 'commandid'
```

Returns the command with Id 'commandid' in the guild 'guildid'.

## PARAMETERS

### -CommandId
The Id of the command.

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
The guild object, can be returned with Get-DiscordGuild.

Specify this or -GuildId.

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
The Guild's Id.

Specify this or -Guild.

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

### Discord.Rest.RestApplicationCommand

### Discord.Rest.RestApplicationCommand

### Discord.Rest.RestApplicationCommand[]

### Discord.Rest.RestApplicationCommand[]

## NOTES

## RELATED LINKS
