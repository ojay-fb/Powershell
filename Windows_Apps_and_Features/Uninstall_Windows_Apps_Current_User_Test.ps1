# Scripts to Remove Additional Windows Packages

# Version 1.0 - created by Oliver Jonas

# Part One
# Remove Appx-Packages via Powershell

Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage *feedback* | Remove-AppxPackage
Get-AppxPackage *getstarted* | Remove-AppxPackage
Get-AppxPackage *windowsstore* | Remove-AppxPackage
Get-AppxPackage *zunevideo* | Remove-AppxPackage
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *gethelp* | Remove-AppxPackage
Get-AppxPackage *xboxIdentityprovider* | Remove-AppxPackage
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxPackage *windowsalarms* | Remove-AppxPackage
Get-AppxPackage *Asphalt8Airborne* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *CandyCrushSaga* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *Facebook* | Remove-AppxPackage
Get-AppxPackage *bingfinance* | Remove-AppxPackage
Get-AppxPackage *bingweather* | Remove-AppxPackage
Get-AppxPackage *bingsports* | Remove-AppxPackage
Get-AppxPackage *windowscamera* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *skypeapp* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *messaging* | Remove-AppxPackage
Get-AppxPackage *officehub* | Remove-AppxPackage
Get-AppxPackage *soundrecorder* | Remove-AppxPackage
Get-AppxPackage *dvd* | Remove-AppxPackage
Get-AppxPackage *oneconnect* | Remove-AppxPackage
Get-AppxPackage *yourphone* | Remove-AppxPackage
Get-AppxPackage *whiteboard* | Remove-AppxPackage
Get-AppxPackage *mixedreality* | Remove-AppxPackage
Get-AppxPackage *todos* | Remove-AppxPackage
Get-AppxPackage *networkspeedtest* | Remove-AppxPackage
Get-AppxPackage *sway* | Remove-AppxPackage
Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage
Get-AppxPackage XboxOneSmartGlass | Remove-AppxPackage
Get-AppxPackage Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage
Get-AppxPackage Microsoft.XboxIdentityProvider | Remove-AppxPackage
Get-AppxPackage *microsoft3dviewer* | Remove-AppxPackage
Get-AppxPackage *remotedesktop* | Remove-AppxPackage
Get-AppxPackage *wallet* | Remove-AppxPackage
Get-AppxPackage *vp9videoextensions* | Remove-AppxPackage
Get-AppxPackage Microsoft.GetHelp | Remove-AppxPackage
Get-AppxPackage Microsoft.Getstarted | Remove-AppxPackage
Get-AppxPackage Microsoft.OutlookForWindows | Remove-AppxPackage
Get-AppxPackage Microsoft.People | Remove-AppxPackage
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage

# Accept the Source Agreements on Microsoft WinGet

winget list --accept-source-agreements

# Upgrade all Windows Apps - Automatic Accept the Package Agreements (if possible)

# winget upgrade --all --accept-package-agreements

# Part Two
# Remove Windows 11 Apps via WinGet

winget uninstall "Power Automate" --silent
winget uninstall "Xbox" --silent
winget uninstall "Remotehilfe" --silent
winget uninstall "Microsoft Bing-Suche" --silent
winget uninstall "Clipchamp" --silent
winget uninstall "Xbox Game Bar Plugin" --silent
winget uninstall "Cortana" --silent
winget uninstall "Microsoft News – Nachrichten" --silent
winget uninstall "Xbox TCUI" --silent

# SIG # Begin signature block
# MIIPAgYJKoZIhvcNAQcCoIIO8zCCDu8CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUZtroK9TyJB3pxjFxs5GdBUFw
# ZvCgggxsMIIFqzCCBJOgAwIBAgITGQAAAAIGFEvG5j8migAAAAAAAjANBgkqhkiG
# 9w0BAQsFADAZMRcwFQYDVQQDEw5CRlcgQkIgUm9vdCBDQTAeFw0yMDA4MTExMTE4
# MzFaFw0zMDA4MTExMTI4MzFaMEgxFjAUBgoJkiaJk/IsZAEZFgZpbnRlcm4xEzAR
# BgoJkiaJk/IsZAEZFgNiZncxGTAXBgNVBAMTEEJGVyBCQiBTdWIgQ0EgMDEwggEi
# MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCd+iJYEJoH/OqjHS0sojxQNyco
# 22Y1dlZMdOmOsq8MFajjGdiDhK1O8UNRAmecIdnTRIszQaI0xjZAucDBCGAjJ0nb
# TaqHohaXiKL0BSzEVBXwXDyypFYkQCelKYvC6myFZntxEWzIKGlkXzujkSY7+4vP
# bgx9HmBt3sME/+q3J7hIr7Bwk7iMF3kgFEtRNKNZkAakP7b3yEYbnHLxoX20PIwk
# Trvldtq3JafQKFY33LFHP79F1f00AcEC+GSZn6/sDuU1p+y+PDOI2Tji3S07tlVP
# DpD8hz+fn2KtFGCcnSuW9VKFDG1giLsJWPQcFOkEbUxsRfZdMRJeUOKZcanFAgMB
# AAGjggK7MIICtzAQBgkrBgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQUCO+tT72b0Cn/
# tqtfxxc5FU9xQdkwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQD
# AgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUMm1VFgI6TQ3IJ5eLsF1X
# oBnw+DUwggEOBgNVHR8EggEFMIIBATCB/qCB+6CB+IaBumxkYXA6Ly8vQ049QkZX
# JTIwQkIlMjBSb290JTIwQ0EsQ049cm9vdC1jYSxDTj1DRFAsQ049UHVibGljJTIw
# S2V5JTIwU2VydmljZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1i
# ZncsREM9aW50ZXJuP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/YmFzZT9vYmpl
# Y3RDbGFzcz1jUkxEaXN0cmlidXRpb25Qb2ludIY5aHR0cDovL3BraS5iZncuaW50
# ZXJuL0NlcnRFbnJvbGwvQkZXJTIwQkIlMjBSb290JTIwQ0EuY3JsMIIBFgYIKwYB
# BQUHAQEEggEIMIIBBDCBsgYIKwYBBQUHMAKGgaVsZGFwOi8vL0NOPUJGVyUyMEJC
# JTIwUm9vdCUyMENBLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxD
# Tj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPWJmdyxEQz1pbnRlcm4/Y0FD
# ZXJ0aWZpY2F0ZT9iYXNlP29iamVjdENsYXNzPWNlcnRpZmljYXRpb25BdXRob3Jp
# dHkwTQYIKwYBBQUHMAKGQWh0dHA6Ly9wa2kuYmZ3LmludGVybi9DZXJ0RW5yb2xs
# L3Jvb3QtY2FfQkZXJTIwQkIlMjBSb290JTIwQ0EuY3J0MA0GCSqGSIb3DQEBCwUA
# A4IBAQAgJqgYwsrlyB8kjUGoeoiXkGNSKKMdfKB8LMDk81R/gDqbgBuW/9qJNB8g
# o84WEtL3c4XOkcAZBR/+78sHlVBaUEBPEjjr0KKgrETTBOQHmjKj0Bt3oEPphSDk
# k4fVXzi3wk9s5mWRD/1XuCY/D2WG8qNALlwtTFrOfCzUG+2INwFzKnEmOGgkkou4
# RzPE+mh4JA9sJadlBVtJEPSm/nbZ3gK4xo88ZTFkqSH9Q+YBXG7K5xGtdkzdeL8o
# Z6aNlMLqam44bPR9mnLcp5EVgRReiBx9YAAQf1fc+iyvU26m0yvN8OC5Tk6QErh5
# AFbFJQqiacwCNd/bmpgyjNd1beoiMIIGuTCCBaGgAwIBAgITSwAAALBhdp0pbMYN
# 1wAAAAAAsDANBgkqhkiG9w0BAQsFADBIMRYwFAYKCZImiZPyLGQBGRYGaW50ZXJu
# MRMwEQYKCZImiZPyLGQBGRYDYmZ3MRkwFwYDVQQDExBCRlcgQkIgU3ViIENBIDAx
# MB4XDTIwMDgxMzEwNTIyNloXDTI1MDgxMjEwNTIyNlowgYUxFjAUBgoJkiaJk/Is
# ZAEZFgZpbnRlcm4xEzARBgoJkiaJk/IsZAEZFgNiZncxDDAKBgNVBAsTA0JGVzEM
# MAoGA1UECxMDQ0hBMQ0wCwYDVQQLEwRVc2VyMRYwFAYDVQQLEw1TaGFyZWRNYWls
# Ym94MRMwEQYDVQQDEwpJVC1TZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
# MIIBCgKCAQEA2Zxk6PHFINxHjUdPp17619vwW36zD6dShQSlictjT6sJAVAtkb6e
# ESZw0MsZe1vBx7OAUe4ERXVhfahc9ozc2BeoqhwA6pqUoDCCL3TeImYaHzNWK3Y3
# i/iPib17W+BXFKrQURUoEPRbE1GjOUs2eW5otoxmk/LKn8Ft4BJIUuvWaSCEfI9z
# 8vqwCKSEsk8+4h1eJaMAf0eyE7uL/x9NqL0W7TYkuq702Mo6u1fsh1zm1NRf9Xr1
# amLXl3lQRyGHsjnwC/CJvd4YgMMZOcXUWWZoHmY7OYvGb8XuqeAKe2kf6hw3QQQk
# zyZP0Mzf/1lh1v2W6xUWJhIreelvCWr8QQIDAQABo4IDXDCCA1gwPQYJKwYBBAGC
# NxUHBDAwLgYmKwYBBAGCNxUIgvmIQYKIzVmF7ZM3hJbzQYXr1TZzh8yGMoTC71kC
# AWQCAQUwEwYDVR0lBAwwCgYIKwYBBQUHAwMwDgYDVR0PAQH/BAQDAgeAMBsGCSsG
# AQQBgjcVCgQOMAwwCgYIKwYBBQUHAwMwHQYDVR0OBBYEFGHmnrupnZh7KlI/+pxz
# vU/ojKLYMB8GA1UdIwQYMBaAFAjvrU+9m9Ap/7arX8cXORVPcUHZMIIBHwYDVR0f
# BIIBFjCCARIwggEOoIIBCqCCAQaGgcRsZGFwOi8vL0NOPUJGVyUyMEJCJTIwU3Vi
# JTIwQ0ElMjAwMSxDTj0yLXN2LWNhLW1hLTAxLENOPUNEUCxDTj1QdWJsaWMlMjBL
# ZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPWJm
# dyxEQz1pbnRlcm4/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVj
# dENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hj1odHRwOi8vcGtpLmJmdy5pbnRl
# cm4vQ2VydEVucm9sbC9CRlclMjBCQiUyMFN1YiUyMENBJTIwMDEuY3JsMIIBLwYI
# KwYBBQUHAQEEggEhMIIBHTCBtgYIKwYBBQUHMAKGgalsZGFwOi8vL0NOPUJGVyUy
# MEJCJTIwU3ViJTIwQ0ElMjAwMSxDTj1BSUEsQ049UHVibGljJTIwS2V5JTIwU2Vy
# dmljZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1iZncsREM9aW50
# ZXJuP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9u
# QXV0aG9yaXR5MGIGCCsGAQUFBzAChlZodHRwOi8vcGtpLmJmdy5pbnRlcm4vQ2Vy
# dEVucm9sbC8yLXN2LWNhLW1hLTAxLmJmdy5pbnRlcm5fQkZXJTIwQkIlMjBTdWIl
# MjBDQSUyMDAxLmNydDA/BgNVHREEODA2oDQGCisGAQQBgjcUAgOgJgwkSVQtU2Vy
# dmljZUBiZnctYmVybGluLWJyYW5kZW5idXJnLmRlMA0GCSqGSIb3DQEBCwUAA4IB
# AQCWAGwgUh/rbcl2M/j56mLeq1LSoi4YlB0Rpl6oPYCg8LHFbgFQmzmxwReDctlM
# 6nOL84AaQ39FS2d9UTC8MpXFLKgMbGVdlXFNvwcisLbnAOtPeHW0veewC+eb+kTk
# CsQz/gVapn88EFSFU4AjpGC603IYksOFrRb/vjnIIKqSxn8f6JRZziXWmgnKkEah
# R+gMWKtOODq4JK/isPa5BAOR+vEHpgR292VQLiQJfkeVePckBSEvEephinrc7b5E
# 22z0z8QG295SK6OGGzvrCHa0I1YTCkW4igiDjAPvbeVYWsowR71Y2aFi9pYyC2Gk
# L6T6MMAkqDpaRT7OGSSCh4lfMYICADCCAfwCAQEwXzBIMRYwFAYKCZImiZPyLGQB
# GRYGaW50ZXJuMRMwEQYKCZImiZPyLGQBGRYDYmZ3MRkwFwYDVQQDExBCRlcgQkIg
# U3ViIENBIDAxAhNLAAAAsGF2nSlsxg3XAAAAAACwMAkGBSsOAwIaBQCgeDAYBgor
# BgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3AgEE
# MBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJBDEWBBSP
# 6ZNOiT2UZvF8CgdQkhgh1CLeLDANBgkqhkiG9w0BAQEFAASCAQBUjDvBCUGyK7vc
# 1ctb48DIRTbnhj5x9FbI/DsLt4obH+UGblSvxHZpDG+PYXK3ChiIXlHJE4g7MQc+
# DhmRjUoqiUGd4fhdXEFXRQ/S1xPZR7WmLbLLmEpppHZVf+YCtnigFXc5juzFO+jH
# NBQsBRM7sMzIxqoWuuQohcLlp3+kPmOP7wMOc8SHdxMvvSa12iV8onb5SmYhoY1+
# BJbjsHKKx9Md4VI7TFSR8RywfYvnFcPXEDfZGQDLxO4y+S640SK7AzFz+8kvSljl
# iWoepbK20ZEMl2zI65EcOsv2nNYM01wHU3GkzV6UfT2SG3Ts4HU6aV59pYZ+Ao0a
# YKPHIfA2
# SIG # End signature block
