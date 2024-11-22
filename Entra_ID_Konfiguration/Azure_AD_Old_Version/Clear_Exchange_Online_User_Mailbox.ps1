# Wenn das Modul "ExchangeOnlineManagement" noch nicht installiert ist, muss es mit "Install-Module ExchangeOnlineManagement" installiert werden

# Exchange Online Module importieren und ggf. aktualisieren ...

Import-Module ExchangeOnlineManagement
Update-Module ExchangeOnlineManagement

# zu Exchange Online verbinden ...

Connect-ExchangeOnline -UserPrincipalName jonasoliver@bfw-berlin-brandenburg.de

# Schritte zum "Bereinigen" der (doppelten) Online-Mailbox des Benutzers

# Schritt 1: dem betreffenden Benutzer die Exchange Online Lizenz entziehen
# Schritt 2: mit "Get-MailBox <UserName>" kontrollieren, ob dem betreffenden Benutzer die Exchange Online Mailbox entfernt wurde
# Schritt 3: wenn Ja, die alten Mailboxinformationen mit "Set-User <UserName> -PermanentlyClearPreviousMailboxInfo" entfernen --> sollte ohne Fehlermeldung durchlaufen!
# Schritt 4: dem betreffenden Benutzer die Exchange Online Lizenz zurückgeben

# Danach sollte der betreffende User keine Mailbox mehr in Exchange Online haben, jedoch einen MailUser Kontakt auf dem Exchange Online Server unter "Kontakte"
