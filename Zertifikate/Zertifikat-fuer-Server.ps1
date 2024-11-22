#### Erst Zertifikat austellen - inf anpassen - auf Namen achten

cd\
cd temp
### zunächst die RequestConfig.ini anpassen!!!!

certreq -new C:\temp\RequestConfig.inf c:\temp\2-sv-as-ma-06_2020.req

### jetzt Zertifikat erstellen über Befehl, oder direkt auf dem CA Server
certreq.exe -submit 2-sv-as-ma-06_2020.req 2-sv-as-ma-06_2020.cer


#### Jetzt in lokalen Store stecken
Import-Certificate -FilePath 2-sv-as-ma-06_2020.cer -CertStoreLocation cert:\LocalMachine\MY


###### Anzeigename Anpassen

(Get-ChildItem -Path Cert:\LocalMachine\My\83E39922721F7BA5FE133CE7EA4C36FB679D26B6).FriendlyName = "Intranet-Test 2020"


#### weiter um privaten Schlüssel zu erzeugen ;o

$Password = ConvertTo-SecureString -String "P@ssw0rd2_" -Force -AsPlainText
Get-ChildItem -Path cert:\localMachine\my\83E39922721F7BA5FE133CE7EA4C36FB679D26B6 | Export-PfxCertificate -FilePath C:\Temp\2-sv-as-ma-06_2020.pfx -Password $Password



