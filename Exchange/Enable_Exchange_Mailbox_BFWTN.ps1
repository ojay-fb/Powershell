$users = Get-ADUser -LDAPFilter '(Name=*)' -SearchBase "OU=M-FLOD1701-FHL,OU=User_TN,OU=User_All,OU=2-BFWTN,DC=bfwtn,DC=intern" -Server 2-SV-DC-TN-01.bfwtn.intern
foreach($user in $users)
{

    Enable-Mailbox -Identity $user.SamAccountName

}