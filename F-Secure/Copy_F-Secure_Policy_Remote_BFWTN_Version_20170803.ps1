# Powershell-Script Script zum aktualisieren der F-Secure Management Agent Policys
# 
# erstellt von Oliver Jonas, 20170803, Version 1.2
#

#####################################################################################################################################################

    $IQADServer = "2-sv-dc-tn-01.bfwtn.intern"
    $IQADComputerOU = "OU=N_315,OU=Computer_TN,OU=Computer_All,OU=2-BFWTN,DC=bfwtn,DC=intern"
    $FSMA = "fsma"
    $FSAUA = "fsaua"
    $SourcePath = "\\2-sv-fs-tn-01.bfwtn.intern\netinstall\f-secure\"
    $FileName = "policy.bpf"
    $PubKey = "admin.pub"
    $ADComputer = Get-ADComputer -Server $IQADServer -SearchBase $IQADComputerOU -Filter *
    
    foreach ($name in $ADComputer)
    {
    $WorkingComputer = $name.Name
    $x86DestinationPath = "\\$WorkingComputer\c$\Program Files\F-Secure\Common"
    $x64DestinationPath = "\\$WorkingComputer\c$\Program Files (x86)\F-Secure\Common"
    $MeldungStopService = "Stoppe den Service $FSMA auf dem Computer $WorkingComputer ..."
    $MeldungStartService = "Starte den Service $FSMA auf dem Computer $WorkingComputer ..."
    $MeldungCopy = "Kopiere die Dateien auf den Computer $WorkingComputer ..."
    $MeldungPatchEnde = "Die Aktualisierung von Computer $WorkingComputer ist abgeschlossen ..."
    
    $x86ComputerProgramPath = "\\$WorkingComputer\c$\Program Files\"
    $x64ComputerProgramPath = "\\$WorkingComputer\c$\Program Files (x86)\"
    $x64ComputerProgramPathTrue = (Test-Path $x64ComputerProgramPath)

        if($x64ComputerProgramPathTrue -eq "True"){
	           echo ""; echo "$WorkingComputer ist ein x64 (64bit) Computer ..."; echo ""; echo $MeldungStopService; echo ""; Get-Service -name $FSMA -ComputerName $WorkingComputer | Stop-Service; echo ""; echo $MeldungCopy; echo ""; Copy-Item -Path $SourcePath$FileName,$SourcePath$PubKey -Destination $x64DestinationPath; echo ""; echo $MeldungStartService; echo ""; Get-Service -name $FSMA -ComputerName $WorkingComputer | Start-Service; echo ""; echo $MeldungPatchEnde
	                                                        }
        else{
               echo ""; echo "$WorkingComputer ist ein x86 (32bit) Computer ..."; echo ""; echo $MeldungStopService; echo ""; Get-Service -name $FSMA -ComputerName $WorkingComputer | Stop-Service; echo ""; echo $MeldungCopy; echo ""; Copy-Item -Path $SourcePath$FileName,$SourcePath$PubKey -Destination $x86DestinationPath; echo ""; echo $MeldungStartService; echo ""; Get-Service -name $FSMA -ComputerName $WorkingComputer | Start-Service; echo ""; echo $MeldungPatchEnde
       
                                                             }   
    }