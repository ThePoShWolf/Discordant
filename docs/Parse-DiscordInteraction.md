---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Parse-DiscordInteraction

## SYNOPSIS
Parse a Discord interaction as a bot.

## SYNTAX

```
Parse-DiscordInteraction [[-PublicKey] <String>] [[-Signature] <String>] [[-TimeStamp] <String>]
 [[-Body] <String>] [<CommonParameters>]
```

## DESCRIPTION
Used for a Discord bot to parse an interaction.

## EXAMPLES

### Example 1
```powershell
Parse-DiscordInteraction -PublicKey $pk -Signature $sig -Timestamp $ts -Body $body
```

Parses a Discord interaction if passed the bot's public key, the signature of the body, the timestamp, and the body itself.

## PARAMETERS

### -Body
The body of the interaction.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicKey
The bot's public key.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Signature
The signature of the interaction.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeStamp
The timestamp on the interaction.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Discord.Rest.RestSlashCommand

## NOTES

## RELATED LINKS
