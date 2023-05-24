---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Get-DiscordGuild

## SYNOPSIS
Retrieve Discord guilds (servers).

## SYNTAX

### all (Default)
```
Get-DiscordGuild [-RequestOptions <RequestOptions>] [<CommonParameters>]
```

### byId
```
Get-DiscordGuild [-Id <UInt64>] [-RequestOptions <RequestOptions>] [<CommonParameters>]
```

## DESCRIPTION
Returns all guilds (servers) that the authentication context has access to or a specific guild by ID.

## EXAMPLES

### Example 1
```powershell
Get-DiscordGuild
```

Returns all guilds that the authentication context has access to.

### Example 2
```powershell
Get-DiscordGuild -Id '<id>'
```

Returns the guild with Id '<id>'.

## PARAMETERS

### -Id
The guild Id.

```yaml
Type: UInt64
Parameter Sets: byId
Aliases:

Required: False
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

### Discord.Rest.RestGuild

### Discord.Rest.RestGuild[]

## NOTES

## RELATED LINKS
