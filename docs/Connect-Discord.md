---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Connect-Discord

## SYNOPSIS
Authenticate to Discord.

## SYNTAX

### Rest (Default)
```
Connect-Discord [-RestClient] [-TokenType <TokenType>] [-Token <String>] [-Quiet] [<CommonParameters>]
```

### Socket
```
Connect-Discord [-SocketClient] [-TokenType <TokenType>] [-Token <String>] [-Quiet] [<CommonParameters>]
```

## DESCRIPTION
Authentication must be run prior to any other commands.

## EXAMPLES

### Example 1
```powershell
Connect-Discord -RestClient -TokenType Bot -Token '<token>'
LoggedIn
```

Authenticates to Discord as a bot.

## PARAMETERS

### -Quiet
Silences output.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestClient
Logs in via the Rest Client. This is the recommended and tested client.

```yaml
Type: SwitchParameter
Parameter Sets: Rest
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SocketClient
Logs in via the Socket Client. This is not tested, but the underlying SDK supports it.

```yaml
Type: SwitchParameter
Parameter Sets: Socket
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Token
The authentication token. In the case of a bot, the bot's token.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TokenType
Specify the type of token that you are providing. Bearer, Bot, or Webhook.

```yaml
Type: TokenType
Parameter Sets: (All)
Aliases:
Accepted values: Bearer, Bot, Webhook

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

### System.Object
## NOTES

## RELATED LINKS
