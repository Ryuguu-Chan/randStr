# +---------------------------------------+
# | MADE BY OGAN OEZKUL (AKA RYUGUU CHAN) |
# +---------------------------------------+

# Yea it's pretty rudimentary stuff...

param
(
    [Parameter(Mandatory=$true)]
    [int]$length
)

[string]$passChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcedfghijklmnopqrstuvwxyz0123456789-*/+.-_:,;<>\\¦@#ç%&¬/|(¢)=?^~"
[string]$output = ""

[int]$maxRand = $passChars.Length

for ($i = 0; $i -lt $length; $i++)
{
    $temp = Get-Random -Minimum 0 -Maximum $maxRand
    $output += $passChars[$temp]
}

# outputting the result
Write-Host $output
