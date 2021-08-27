<?php

$ReadData = file('Incubyte_DataEngineer_HospitalData.dat'); // Read a file and convert each row of data into an array
$Country = []; // To store country's name
$Id = []; // To store registered customer's id


// Database connection 
//mysqli_connect("servername", "username", "password","databse")
$Connection = mysqli_connect("localhost", "root", "", "incubyte_dataengineer_database"); 
if(!$Connection)
{
	die("Connection Failed:" . mysqli_connect_error());
}


// Data Reading
if($ReadData)
{
	// Loop through all the row of data from an array
	foreach($ReadData as $Temp) 
	{
		// Create an array of elements for each row
		$Data = explode("|", $Temp); 

		// If header, then continue reading next row
		if($Data[1] == "H") 
		{
			continue;
		}

		// If trailer, then stop reading 
		else if($Data[1] == "T") 
		{
			break;
		}

		else // If details, then process it
		{
			$Temp_Country = $Data[9];

			// To check the presence of table in database
			$Query = "SELECT 1 FROM `$Temp_Country`"; 
			$Result = mysqli_query($Connection, $Query);

			// To create a new table, if not exist 
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
														Post_Code INT(6) DEFAULT NULL,
														Date_of_Birth Date DEFAULT NULL,
														Default_Customer CHAR(1) DEFAULT NULL)";
				
				$Result_Table = mysqli_query($Connection, $Query_Table);

				// To insert the first record in newly created table
				if($Result_Table) 
				{
					$Query_Insert = "INSERT INTO $Temp_Country(Customer_Id, Customer_Name, 
																Customer_Open_Date, Last_Consulted_Date, 
																Vaccination_Type, Doctor_Consulted, State, 
																Country, Post_Code, Date_of_Birth, 
																Default_Customer) 
														VALUES('$Data[3]', '$Data[2]', $Data[4], $Data[5], 
																'$Data[6]','$Data[7]', '$Data[8]', '$Data[9]', 
																$Data[10], $Data[11], '$Data[12]')";
					
					$Result_Insert = mysqli_query($Connection, $Query_Insert);

					// Success of table creation and first data entry
					if($Result_Insert) 
					{
						echo "<h1> Table for". " <b> $Temp_Country </b> " ." is created successfully and first data is also inserted successfully! </h1>";
						echo "<br>";
						array_push($Id, $Data[3]);
					}

					// Failure of firt data entry
					else 
					{
						echo " <h1> Data of Customer Id" . "<b> $Data[3] </b>" . "is not inserted successfully!" . mysqli_error($Connection) . "</h1>";
						echo "<br>";
					}
				}

				// Failure of table creation
				else 
				{
					echo "<h1> Table for" . "<b> $Temp_Country </b>" . "is not created successfully!" . mysqli_error($Connection) . "</h1>";
					echo "<br>";
				}
			}

			// If table is already created 
			else 
			{
				// To add the new record in database
				if(!in_array($Temp_Country, $Id)) 
				{
					$Query_Insert = "INSERT INTO $Temp_Country(Customer_Id, Customer_Name, Customer_Open_Date, Last_Consulted_Date, Vaccination_Type, Doctor_Consulted, State, Country, Post_Code, Date_of_Birth, Default_Customer) VALUES('$Data[3]', '$Data[2]', $Data[4], $Data[5], '$Data[6]', '$Data[7]', '$Data[8]', '$Data[9]', $Data[10], $Data[11], '$Data[12]')";
					
					$Result_Insert = mysqli_query($Connection, $Query_Insert);	

					// Success of data insertion
					if($Result_Insert)  
					{
						echo "<h1> Data of Customer Id" . "<b> $Data[3] </b>" . "is inserted successfully! </h1>";
						echo "<br>";
						array_push($Id, $Data[3]);
					}

					// Data already exist in database
					else 
					{
						echo "<h1> Data of Customer Id". "<b> $Data[3] </b>" . "is already exists in database! <h1>";
					    echo "<br>";
					}
				}
			}
		}
	}
}

// If a file is empty
else
{
	echo "<center> <h1> The File is Empty! </h1> </center>";
	echo "<br>";
}

?>