$input = Read-Host "Enter String to convert"
$shift = Read-Host "Enter the shfit value"

$charArray = $input.ToCharArray()

$output = ""
$shift = $shift%37

foreach ($char in $charArray)
{
    $output += ([char]([int]$char-$shift))
}

Write-Host $output