$directions = get-content C:\repo\adventofcode2015\input.txt
$floor = 0
$position = 0
foreach($character in $directions.ToCharArray()) 
{ 
     $position = $position + 1
   if   ($character -eq "(")
   {
        $floor = $floor + 1
   }
   else 
   {
        $floor = $floor - 1
   }

   if ($floor -eq -1 )
  { 
       return $position
  }
}