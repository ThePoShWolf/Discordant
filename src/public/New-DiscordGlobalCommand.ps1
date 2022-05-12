Function New-DiscordGlobalCommand {
    [cmdletbinding()]
    param (
        [Discord.ApplicationCommandType]$Type = 'Slash',
        [Parameter(
            Mandatory
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Name,
        [Parameter(
            Mandatory
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Description
    )

    switch ($Type) {
        'Slash' {
            $cb = [Discord.SlashCommandBuilder]::new()
            $cb.Name = $Name
            $cb.Description = $Description
        }
        default {
            Throw "Command type '$Type' not yet implemented in module."
        }
    }
    $task = $DiscordClient.CreateGlobalApplicationCommand($cb.Build())
    $task.Wait()
    $task.Result
}