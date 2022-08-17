Import-Module -Name SQLPS
Mkdir F:\AdventureWorks\
$RelocateData = New-Object Microsoft.SqlServer.Management.Smo.RelocateFile("AdventureWorksLT2019_data", "F:\AdventureWorks\AdventureWorksLT2019.mdf")
$RelocateLog = New-Object Microsoft.SqlServer.Management.Smo.RelocateFile("AdventureWorksLT2019_Log", "F:\AdventureWorks\AdventureWorksLT2019.ldf")
Restore-SqlDatabase -ServerInstance "sqltest-ms" -Database "AdventureWorksLT2019" -BackupFile "\\github.com\CSALabsAutomation\quickstart-templates\tree\main\sqlservices\sqlvm\AdventureWorksLT2019.bak" -RelocateFile @($RelocateData,$RelocateLog)
