<?php

$ReadData = file('Incubyte_DataEngineer_HospitalData.dat'); // Read a file and convert each row of data into an array
$Country = []; // To store country's name

if($ReadData)
{
	foreach($ReadData as $Temp) // Loop through all the row of data from an array
	{
		$Data = explode("|", $Temp); // Create an array of elements for each row

		if($Data[1] == "H") // If header, then continue reading next row
		{
			continue;
		}
		else if($Data[1] == "T") // If trailer, then stop reading 
		{
			break;
		}
		else // If data
		{
			echo "<h3> $Data[2]" . " " . "$Data[3]". " " . "$Data[4]" . " " . "$Data[5]" . " " . "$Data[6]" . " " . "$Data[7]" . " " . "$Data[8]" . " " . "$Data[9]" . " " . "$Data[10]" . " " . "$Data[11]";
			echo " ";
		}


	}

}

else
{
	echo "<center> <h1> The File is Empty! </h1> </center>";
}
?>