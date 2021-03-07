$directions = get-content C:\repo\adventofcode2015\inputd2.txt
$full = 0
foreach ($box in $directions) 
{
    [int]$length = $box.split("x")[0]
    [int]$width = $box.split("x")[1]
    [int]$height = $box.split("x")[2]


    $lw = $length * $width
    $wh = $width * $height
    $hl = $height * $length
    $minimum = ($lw,$wh,$hl|Measure-Object -Minimum).Minimum
    $sa = (2 * $length * $width + 2 * $width * $height + 2 * $height * $length) + $minimum
    $full = $full + $sa
}
$full