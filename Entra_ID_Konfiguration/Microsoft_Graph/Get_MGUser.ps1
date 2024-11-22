# Use MS Entra ID User with Microsoft Graph Powershell API

Connect-MgGraph

Get-MgUser -Filter "startsWith(DisplayName, '2-BFWTN-')" | Format-List ID, DisplayName, Mail, UserPrincipalName