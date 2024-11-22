# Powershell Script zum signieren von Powershell Scripten durch den angemeldeten User
# Erstellt von IT-Service (oliver Jonas) am 26. August 2016
# Version 1.0
#
# Mittels des Kommandos
#
# Get-ChildItem cert:\CurrentUser\My -codesigning
#
# prüft man dessen Vorhandensein in der PowerShell-Umgebung.
#
# Signieren kann man sein Script dann per
#
# Set-AuthenticodeSignature ‹Script.ps1› @(Get-ChildItem cert:\CurrentUser\My -codesigning)[0]
#
Set-AuthenticodeSignature .\Add_Printer_Room_M_205.ps1 @(Get-ChildItem cert:\CurrentUser\My -codesigning)[0]
