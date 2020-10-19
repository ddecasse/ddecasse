##$lnk | Get-Member
##$WshShell = New-Object -ComObject WScript.Shell
##$lnk = $WshShell.CreateShortcut("$Home\Desktop\PSHome.lnk")
##$lnk.TargetPath = $PSHome
##$lnk.Save()

Write-Host $PSHome
Write-Host $Home



function set-shortcut {

    param ( [string]$SourceLnk, [string]$DestinationPath )
    
        $WshShell = New-Object -comObject WScript.Shell
    
        $Shortcut = $WshShell.CreateShortcut($SourceLnk)
    
        $Shortcut.TargetPath = $DestinationPath
    
        $Shortcut.Save()
    
        }
    
    set-shortcut "C:\workspace\data\shortcuts\data.lnk" "C:\workspace\data\powershell\Shortcut_test.txt"