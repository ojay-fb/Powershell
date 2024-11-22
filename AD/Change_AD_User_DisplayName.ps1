
$AllADUser = Get-ADUser -Filter 'Name -like "*"' -SearchBase "OU=M-FPBK2101-HBG,OU=M-FPBK,OU=User_TN,OU=User_All,OU=2-BFWTN,DC=bfwtn,DC=intern" -Server 2-sv-dc-tn-01.bfwtn.intern -Properties * | select Givenname, Surname, SamAccountName, DisplayName

foreach ($AllADUserA in $AllADUser)
{
Set-ADUser -Identity $AllADUserA.SamAccountName -DisplayName (($AllADUserA.Surname) + "," + " " + ($AllADUserA.Givenname))
}

