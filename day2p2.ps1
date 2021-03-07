$directions = get-content C:\repo\adventofcode2015\inputd2.txt
$full = 0
foreach ($box in $directions) 
{
    [int]$length = $box.split("x")[0]
    [int]$width = $box.split("x")[1]
    [int]$height = $box.split("x")[2]


    #$lw = $length * $width
    #$wh = $width * $height
    #$hl = $height * $length
    $maximum = ($length,$width,$height|Measure-Object -Maximum).Maximum
    
    $ribbon = ($length + $length + $width + $width + $height + $height) - ($maximum + $maximum)
    $bow = $length * $width * $height
    $sa = $ribbon + $bow
    
    $full = $full + $sa
}
$full