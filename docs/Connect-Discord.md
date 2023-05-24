---
external help file: Discordant-help.xml
Module Name: Discordant
online version:
schema: 2.0.0
---

# Connect-Discord

## SYNOPSIS
{{ Fill in the Synopsis }}

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
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Quiet
{{ Fill Quiet Description }}

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
{{ Fill RestClient Description }}

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
{{ Fill SocketClient Description }}

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
{{ Fill Token Description }}

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
{{ Fill TokenType Description }}

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
