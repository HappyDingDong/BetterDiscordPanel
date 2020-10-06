cls
$caption = "[BetterDiscordPanel]: Hello, $env:UserName!
 "
$description = "[BetterDiscordPanel]: Select the option you would like to perform.
 "

$choices = New-Object Collections.ObjectModel.Collection[Management.Automation.Host.ChoiceDescription]
$choices.Add((
  New-Object Management.Automation.Host.ChoiceDescription `
    -ArgumentList `
      "&Start BetterDiscordPanel",
      "Start BetterDiscordPanel in your default browser."
))
$choices.Add((
  New-Object Management.Automation.Host.ChoiceDescription `
    -ArgumentList `
      "&Update BetterDiscordPanel",
      "Update BetterDiscordPanel to the latest available version."
))
$choices.Add((
  New-Object Management.Automation.Host.ChoiceDescription `
    -ArgumentList `
      "&Exit",
      "Exit this script.
      "
))

$selection = $host.ui.PromptForChoice($caption, $description, $choices, -1)
Write-Host

switch($selection) {
  0 {
    .\scripts\Start.ps1
  }
  1 {
    .\scripts\Update.ps1
  }
  2 {
    Exit
  }
}