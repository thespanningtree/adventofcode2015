$directions = get-content C:\repo\adventofcode2015\input.txt
$floor = 0
foreach($character in $directions.ToCharArray()) 
{ 
   if   ($character -eq "(")
   {
        $floor = $floor + 1
   }
   else 
   {
        $floor = $floor - 1
   }
}
   $floor
