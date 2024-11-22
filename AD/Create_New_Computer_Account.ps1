# Create new Computer Accounts at the current AD-OU

$NewADComputerName = "2-PC-N301TN01"
[guid]$GUID = "00000000-0000-0000-0000-0026b9af99d7"
$CurrentADOUPath = "OU=N_301,OU=Computer_TN,OU=Computer_All,OU=2-BFWTN,DC=bfwtn,DC=intern"
#$CurrentADOUPath = "OU=WDS_PC_Pre_Deployment,OU=Computer_Other,OU=Computer_All,OU=2-BFWTN,DC=bfwtn,DC=intern"

New-ADComputer -Name $NewADComputerName -SamAccountName $NewADComputerName -Path $CurrentADOUPath -OtherAttributes @{'netbootGUID' = $GUID} -Enabled $true
