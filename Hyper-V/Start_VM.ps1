# PowerShell Script für das Anschalten der virtuellen Maschinen (VM's) auf den Hyper-V-Hosts der Domäne BFWTN.intern
# Das Einschalten erfolgt in einer bestimmten Reihenfolge.
# Dazwischen werden absichtlich Pausen eingelegt, um das erfolgreiche Starten der VM's abzuwarten.
# Daher Bitte das Script nicht beenden !!!
#
# Das Script wurde erstellt von Oliver Jonas, IT-Service
# Version 1.0
# 16. Oktober 2018

Write-Host -ForegroundColor Yellow ""
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "# PowerShell Script für das Anschalten der virtuellen Maschinen (VM's) auf den Hyper-V-Hosts der Domäne BFWTN.intern #"
Write-Host -ForegroundColor Yellow "# Das Einschalten erfolgt in einer bestimmten Reihenfolge.                                                           #"
Write-Host -ForegroundColor Yellow "# Dazwischen werden absichtlich Pausen eingelegt, um das erfolgreiche Starten der VM's abzuwarten.                   #"
Write-Host -ForegroundColor Yellow "# Daher Bitte das Script nicht beenden !!!                                                                           #"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "# Das Script wurde erstellt von Oliver Jonas, IT-Service                                                             #"
Write-Host -ForegroundColor Yellow "# Version 1.0                                                                                                        #"
Write-Host -ForegroundColor Yellow "# Mühlenbeck den 16. Oktober 2018                                                                                    #"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow ""

Get-VM -Computername "2-sv-vs-tn-01" | start-vm

Write-Host -ForegroundColor Yellow ""
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "#                               Das Script pausiert für 120 Sekunden ...                                             #"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow ""

Start-Sleep 120

Get-VM -Computername "2-sv-vs-tn-02" | start-vm

Write-Host -ForegroundColor Yellow ""
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "#                               Das Script pausiert für 120 Sekunden ...                                             #"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow ""

Start-Sleep 120

Get-VM -Computername "2-sv-vs-tn-03" | start-vm
Write-Host -ForegroundColor Yellow ""
Get-VM -Computername "2-sv-vs-tn-04" | start-vm
Write-Host -ForegroundColor Yellow ""
Get-VM -Computername "2-sv-vs-tn-05" | start-vm
Write-Host -ForegroundColor Yellow ""
Get-VM -Computername "2-sv-vs-tn-06" | start-vm
Write-Host -ForegroundColor Yellow ""
Get-VM -Computername "2-sv-vs-tn-07" | start-vm
Write-Host -ForegroundColor Yellow ""
Get-VM -Computername "2-sv-vs-tn-08" | start-vm
Write-Host -ForegroundColor Yellow ""
Get-VM -Computername "2-sv-vs-tn-09" | start-vm

Write-Host -ForegroundColor Yellow ""
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "#                               Das Script pausiert für 120 Sekunden ...                                             #"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow ""

Start-Sleep 120

Write-Host -ForegroundColor Yellow ""
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "#         Das Starten der VM's ist abgeschlossen! Es erfolgt eine Übersicht, ob alle VM's auch laufen!               #"                                                                                  #"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow ""

Get-Vm -Computername "2-sv-vs-tn-01", "2-sv-vs-tn-02", "2-sv-vs-tn-03", "2-sv-vs-tn-04", "2-sv-vs-tn-05", "2-sv-vs-tn-06", "2-sv-vs-tn-07", "2-sv-vs-tn-08", "2-sv-vs-tn-09"


Write-Host -ForegroundColor Yellow ""
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "#                                     Das Script ist beendet ...                                                     #"                                                                                  #"
Write-Host -ForegroundColor Yellow "#                                                                                                                    #"
Write-Host -ForegroundColor Yellow "######################################################################################################################"
Write-Host -ForegroundColor Yellow ""
