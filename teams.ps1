 # install Teams
 write-host 'AIB Customization: Install MS Teams'
 $teamsURL = 'https://teams.microsoft.com/downloads/desktopurl?env=production&plat=windows&arch=x64&managedInstaller=true&download=true'
 $teamsMsi = 'teams.msi'
 $outputPath = $LocalPath + '\' + $teamsMsi
 Invoke-WebRequest -Uri $teamsURL -OutFile $outputPath
 Start-Process -FilePath msiexec.exe -Args "/I $outputPath /quiet /norestart /log teams.log ALLUSER=1 ALLUSERS=1" -Wait
 write-host 'AIB Customization: Finished Install MS Teams' 
