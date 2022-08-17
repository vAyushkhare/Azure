Import-Module -Name SQLPS
Mkdir F:\AdventureWorks\
$RelocateData = New-Object Microsoft.SqlServer.Management.Smo.RelocateFile("AdventureWorksDW2016_data", "F:\AdventureWorks\AdventureWorksDW2016.mdf")
$RelocateLog = New-Object Microsoft.SqlServer.Management.Smo.RelocateFile("AdventureWorksDW2016_Log", "F:\AdventureWorks\AdventureWorksDW2016.ldf")
Restore-SqlDatabase -ServerInstance "sqltest-ms" -Database "AdventureWorksDW2016" -BackupFile "F:\AdventureWorks\AdventureWorksDW2016.bak" -RelocateFile @($RelocateData,$RelocateLog)
