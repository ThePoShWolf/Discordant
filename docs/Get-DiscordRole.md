---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Get-DiscordRole

## SYNOPSIS
Retrieve Discord roles.

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
Returns all roles for a guild or a role by Id.

## EXAMPLES

### Example 1
```powershell
$guild = Get-DiscordGuild | Select-Object -First 1
Get-DiscordRole -Guild $guild
```

Returns all Discord roles.

### Example 2
```powershell
$guild = Get-DiscordGuild | Select-Object -First 1
Get-DiscordRole -GuildId 'guildid' -RoleId 'roleid'
```

Returns the Discord role with Id 'roleid' from the guild 'guildid'.

## PARAMETERS

### -Guild
The guild object.

This can be created with Get-DiscordGuild

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
The Id of the guild.

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
The Id of the role.

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
