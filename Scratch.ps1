WIN-OLKA2NCD6UF

WIN-8AFAIDHGUKU

$server = "WIN-8AFAIDHGUKU"

ping -4 $server
Get-DhcpServerv4Scope -ComputerName $server -cre

# setup up creds
$UserName = Read-Host "Enter User Name:" 
$Password = Read-Host -AsSecureString "Enter Your Password:" 
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $UserName , $Password 

# cleaner cred setup
$Credential = Get-Credential -Credential "WIN-OLKA2NCD6UF\Administrator"

# setup pssession
# turn off firewall
# check that winrm is running
# run this command to config winrm
winrm quickconfig
Set-Item WSMAN:\Localhost\Client\TrustedHosts -Value * -Force # * means all remote hosts
Get-Item WSMAN:\Localhost\Client\TrustedHosts
Test-WSMan -ComputerName $ComputerName -Credential $Credential -Authentication Negotiate -UseSSL


New-PSSession -ComputerName $ComputerName -Credential $Credential

New-PSSession -ComputerName $ComputerName -Credential $Credential -UseSSL

$ComputerName = "192.168.74.4" 
$dhcpscopes = Get-DhcpServerv4Scope -ComputerName $ComputerName -Credential $Credential 
$Service
