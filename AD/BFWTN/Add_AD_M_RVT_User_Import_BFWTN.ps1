# Powershell-Datei zum hinzufügen von Benutzern zum AD (BFWTN.Intern)
# mit Hilfe der Import-Funktion aus einer CSV-Datei
# erstellt von Oliver Jonas, 20220318, Version 1.0

# globale Variablem erstellen

$NewUserImportDatei = Import-Csv -Path "c:\tmp\AD_UserImport.csv"

# Schleife zum Anlegen der in der CSV-Datei befindlichen Benutzer

foreach ($user in $NewUserImportDatei)

{

# Schleifen-Variablem erstellen

$NewUserFirstName = $user.Firstname
$NewUserLastName = $user.Lastname
$NewUserLastNameAdjusted = $user.LastnameAdjusted
$NewUserTeilnehmerummer = $user.ParticipantNumber
$NewUserDateofBirth = $user.DateofBirth
$NewUserName = ($user.Lastname+","+" "+$user.Firstname)
$NewUserDisplayName = ($user.Lastname+","+" "+$user.Firstname)
$NewUserSAMAccountName = ($user.LastnameAdjusted+$user.ParticipantNumber)
$NewImportOU = "OU=M-RVT2501-BTZ,OU=M-RVT,OU=User_TN,OU=User_All,OU=2-BFWTN,DC=bfwtn,DC=intern"
$ADServer = "2-sv-dc-tn-01.bfwtn.intern"
$NewStartPassword = ("BFW" + $NewUserDateofBirth)
$NewAccountPassword = (ConvertTo-SecureString $NewStartPassword -AsPlainText -Force)
$NewUserPrincipalName = ($NewUserSAMAccountName + "@m365.bfwbb-lernen.de")
$NewUserHomeGroup = "2-GG-M-RVT2501-BTZ"
$NewPosition = "Teilnehmer - M-RVT2501"
$NewDepartment = "Bereich Reha-Assessment"
$NewLocation = "Mühlenbeck"
$NewCompany = "Berufsförderungswerk Berlin-Brandenburg e. V."


# Benutzer im AD anlegen

New-ADUser -Server $ADServer -SamAccountName $NewUserSAMAccountName -Name $NewUserName -Surname $NewUserLastName -GivenName $NewUserFirstName -UserPrincipalName $NewUserPrincipalName -DisplayName $NewUserDisplayName -AccountPassword $NewAccountPassword -Path $NewImportOU -City $NewLocation -Department $NewDepartment -Title $NewPosition -EmailAddress ($NewUserSAMAccountName+"@m365.bfwbb-lernen.de") -Company $NewCompany -ChangePasswordAtLogon $true -Verbose


# Benutzer weiteren Gruppen zuordnen

Add-ADPrincipalGroupMembership -Server $ADServer -Identity $NewUserSAMAccountName -MemberOf ($NewUserHomeGroup,"2-GG-PREVENT-LOGON-MA-PC")


}
# SIG # Begin signature block
# MIIJWwYJKoZIhvcNAQcCoIIJTDCCCUgCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUhGBMz04Ubsi8z3PLp+wa0OsX
# UoagggavMIIGqzCCBZOgAwIBAgITWAAARZOchrbgsyLFtgACAABFkzANBgkqhkiG
# 9w0BAQsFADBeMRIwEAYKCZImiZPyLGQBGRYCZGUxHzAdBgoJkiaJk/IsZAEZFg9i
# ZnctYnJhbmRlbmJ1cmcxEjAQBgoJkiaJk/IsZAEZFgJpcTETMBEGA1UEAxMKSVEg
# Um9vdCBDQTAeFw0xNzA1MzExNDI3MTlaFw0xODA1MzExNDI3MTlaMH0xEjAQBgoJ
# kiaJk/IsZAEZFgJkZTEfMB0GCgmSJomT8ixkARkWD2Jmdy1icmFuZGVuYnVyZzES
# MBAGCgmSJomT8ixkARkWAmlxMRswGQYDVQQLDBJJUV9BZG1pbmlzdHJhdG9yZW4x
# FTATBgNVBAMTDE9saXZlciBKb25hczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
# AQoCggEBAKjZZbzAljtR2Pi3OpGTse6dWLnB4ncB1+XM0MAcaZBmM53e3l5k8vZm
# mI5SfNolyDBlNAn1uTf9px8Mx4nogLsp2ZULU75gJKpbFnyTq3Z0Jv3V1SB7SHzD
# o0di0fFApuUy/pEkrZ8X7ESo4jRl9BJRx/SkTAamkt7wBviaM//TzNKsqo7ax7K+
# jOg5kOp+seHKXa0W10K8lfhu+eldwSpciguopq3ynrd45ajfAO4SAngBmLycXj3B
# CvjVBZCXWN8pvFoAf7BauAv10A21PyNCtINl3QpV5BxRtprx5AOFYSoXJVflfA0Y
# ba5g3OQkOEgAIc4a1PteDNPW+PGT74UCAwEAAaOCA0EwggM9MDwGCSsGAQQBgjcV
# BwQvMC0GJSsGAQQBgjcVCIWguxqBq+FCgYWLAuTnRoLT3hl7gvnETYOw6AMCAWQC
# AQcwEwYDVR0lBAwwCgYIKwYBBQUHAwMwDgYDVR0PAQH/BAQDAgeAMBsGCSsGAQQB
# gjcVCgQOMAwwCgYIKwYBBQUHAwMwPAYDVR0RBDUwM6AxBgorBgEEAYI3FAIDoCMM
# IUpvbmFzT2xpdmVyQGlxLmJmdy1icmFuZGVuYnVyZy5kZTAdBgNVHQ4EFgQU3Hj+
# XSLsCUpFdqc6oktRtgQIygIwHwYDVR0jBBgwFoAU8XqZj5oBoq/fo+XjNtMNYjqx
# +5wwggFrBgNVHR8EggFiMIIBXjCCAVqgggFWoIIBUoaBw2xkYXA6Ly8vQ049SVEl
# MjBSb290JTIwQ0EsQ049SVFQS0lTUlYsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUy
# MFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9aXEsREM9
# YmZ3LWJyYW5kZW5idXJnLERDPWRlP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/
# YmFzZT9vYmplY3RDbGFzcz1jUkxEaXN0cmlidXRpb25Qb2ludIZDaHR0cDovL0lR
# UEtJU1JWLmlxLmJmdy1icmFuZGVuYnVyZy5kZS9DZXJ0RW5yb2xsL0lRJTIwUm9v
# dCUyMENBLmNybIZFZmlsZTovLy8vSVFQS0lTUlYuaXEuYmZ3LWJyYW5kZW5idXJn
# LmRlL0NlcnRFbnJvbGwvSVElMjBSb290JTIwQ0EuY3JsMIHNBggrBgEFBQcBAQSB
# wDCBvTCBugYIKwYBBQUHMAKGga1sZGFwOi8vL0NOPUlRJTIwUm9vdCUyMENBLENO
# PUFJQSxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1D
# b25maWd1cmF0aW9uLERDPWlxLERDPWJmdy1icmFuZGVuYnVyZyxEQz1kZT9jQUNl
# cnRpZmljYXRlP2Jhc2U/b2JqZWN0Q2xhc3M9Y2VydGlmaWNhdGlvbkF1dGhvcml0
# eTANBgkqhkiG9w0BAQsFAAOCAQEAx+NQTkDv1IHq2JPfQG6s9yJs7DRRF+RSPrWA
# sPCm+RZ8Ewyg7lmLyrKQ05xZMo9qoKO0u2XbSsiWI6Xoh6fTAvWuwfnpd3+wmgZd
# uBsLb5uTICotyIYph3mv/c/QXc2K9MCbuhrqS8MnMVhRgrpFlVVoJ+N9mQMkLMJS
# wb/DaA4NqdLsFmTw+7+lgeqNwviMG/E76YMyFqVPPgBupKDdhYdfe1shq8NCNneX
# u2Ni+pTtdvYW5CTiVxgI5zrBbFxJqSFV32w4aMGkhLaZgFpAlt0oVvbpoOZ9Z2GC
# CYNTI7ztKKhIjdiZW9hlQ+/72UpOr2poYf7N0Uewnz96Hlg5ejGCAhYwggISAgEB
# MHUwXjESMBAGCgmSJomT8ixkARkWAmRlMR8wHQYKCZImiZPyLGQBGRYPYmZ3LWJy
# YW5kZW5idXJnMRIwEAYKCZImiZPyLGQBGRYCaXExEzARBgNVBAMTCklRIFJvb3Qg
# Q0ECE1gAAEWTnIa24LMixbYAAgAARZMwCQYFKw4DAhoFAKB4MBgGCisGAQQBgjcC
# AQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYB
# BAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFA+8EuEWZ9d+
# ha3i1sF0w5XLN8p9MA0GCSqGSIb3DQEBAQUABIIBAGUF4eyTZkT4syOgJcArzN/a
# aCNcRpfymExrYyNew0k6K4mTNB+jxub0xJyG/kevxAB2OsmbOEtsaTa1hWaLut+/
# Zf/ZGkZLQ+THuz3tanIa0NxmLO3LS5N6mrhKD98OEKnjgPlFTMTsATRqujAD+xMk
# 7BHa7vFDoXKPj30HzPntqOqpJv3dWeouzK171vKrCLATurcaI84M5U7bqeGzJzOh
# /W90TeOaRxDcStHCvjuKOyCFvk/vCzIVnTXeIa60iCqGu/kbNzk/iLWSvEDKPAAx
# q56gVj2p6J7UFdtkwthDhOK+LL7yXW/jys/G+3/ZHBvHP/YRgpY/2rn6GtlJ0c0=
# SIG # End signature block
