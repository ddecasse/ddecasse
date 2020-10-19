
#https://tfl09.blogspot.com/2019/11/installing-cascadia-code-font-using.html

# Install Cascadia Code
# 1. Download Cascadia Code font from GitHub
$DLPath = 'https://github.com/microsoft/cascadia-code/releases/'+
          'download/v1911.20/Cascadia.ttf'
$DLFile = 'C:\inbound\temp\cascadia-code-master\sources\Cascadia.TTF'
Invoke-WebRequest -Uri $DLPath -OutFile $DLFile

# 2. Now Install the Font 
$Font = New-Object -Com Shell.Application
$Destination = (New-Object -ComObject Shell.Application).Namespace(0x14)
$Destination.CopyHere($DLFile,0x10)