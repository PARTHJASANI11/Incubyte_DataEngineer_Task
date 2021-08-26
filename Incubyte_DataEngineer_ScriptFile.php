<?php

$ReadData = file('Incubyte_DataEngineer_HospitalData.dat'); // Read a file and convert each row of data into an array
$Country = []; // To store country's name
$Connection = mysqli_connect("localhost", "root", "", "incubyte_dataengineer_database");

if(!$Connection)
{
	die("Connection Failed:" . mysqli_connect_error());
}

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
			// echo "<h3> $Data[2]" . " " . "$Data[3]". " " . "$Data[4]" . " " . "$Data[5]" . " " . "$Data[6]" . " " . "$Data[7]" . " " . "$Data[8]" . " " . "$Data[9]" . " " . "$Data[10]" . " " . "$Data[11]";
			// echo " ";
			$Temp_Country = $Data[9];
			$Query = "SELECT 1 FROM `$Temp_Country`";
			$Result = mysqli_query($Connection, $Query);

			if($Result == False)
			{
				$Query_Table = "CREATE TABLE $Temp_Country (Customer_Id VARCHAR(18) PRIMARY KEY,
														Customer_Name VARCHAR(255) NOT NULL,
														Customer_Open_Date DATE NOT NULL,
														Last_Consulted_Date DATE DEFAULT NULL,
														Vaccination_Type CHAR(5) DEFAULT NULL,
														Doctor_Consulted CHAR(255) DEFAULT NULL,
														State CHAR(5) DEFAULT NULL,
														Country CHAR(5) DEFAULT NULL,
														Post_Code INT(8) DEFAULT NULL,
														Default_Customer CHAR(1) DEFAULT NULL)";
				
				$Query_Result = mysqli_query($Connection, $Query_Table);

				if($Query_Result)
				{
					echo "Success!";
				}
				else
				{
					echo "Failure!";
				}
			}
			else
			{
				echo "Already Created!";
			}


		}


	}

}

else
{
	echo "<center> <h1> The File is Empty! </h1> </center>";
}
?>