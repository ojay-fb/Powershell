# Powershell-Datei zum Deaktivieren des Features Microsoft Internet Explorer auf allen AD Computern der Domäne BFWTN.Intern
# mit Hilfe der Import-Funktion aus einer CSV-Datei
# erstellt von Oliver Jonas, 20201126, Version 1.0

# globale Variablem erstellen

$ADComputerImportDatei = Import-Csv -Path "c:\tmp\AD_Computer_Export.csv"

# Schleife zum Abarbeiten der nachfolgenden Befehle auf den in der CSV-Datei befindlichen AD-Computer

foreach ($ADComputer in $ADComputerImportDatei)

{

# Schleifen-Variablem erstellen

$ADComputerName = $ADComputer.DNSHostName

# nachfolgenden Befehl ausführen

#Invoke-Command $ADComputerName -ScriptBlock {get-date}

Invoke-Command $ADComputerName -ScriptBlock {Disable-WindowsOptionalFeature -Online -FeatureName Internet-Explorer-Optional-amd64 -NoRestart}

}