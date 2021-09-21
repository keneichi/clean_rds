#Clear Downloads folder
Get-ChildItem -Path $env:USERPROFILE\Downloads | Remove-Item -Recurse -Confirm:$false

#Clear Temp Internet files form IE Windows 7 and before
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Microsoft\Windows\Temporary Internet Files\Low\Content.MSO" | Remove-Item -Recurse -Confirm:$false
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Microsoft\Windows\Temporary Internet Files\Low\Content.IE5" | Remove-Item -Recurse -Confirm:$false

#Clear Temp Internet files form IE Windows 8 and after
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Microsoft\Windows\INetCache" | Remove-Item -Recurse -Confirm:$false

#Clear Crashes report
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Microsoft\Windows\WER\ReportQueue" -Recurse | Remove-Item -Recurse -Confirm:$false

#Clear explorer cache
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Microsoft\Windows\Explorer" | Remove-Item -Recurse -Confirm:$false

#Clear cache Firefox (and old firefox version)
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Mozilla\Firefox\Profiles\*.default*\Cache" | Remove-Item -Recurse -Confirm:$false
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Mozilla\Firefox\Profiles\*.default*\cache2" | Remove-Item -Recurse -Confirm:$false

#Clear temporary files
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Temp" | Remove-Item -Recurse -Confirm:$false

#Clear Chrome Cache
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Google\Chrome\Application" | Remove-Item -Recurse -Confirm:$false
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Google\Chrome\User Data\Default\Cache" | Remove-Item -Recurse -Confirm:$false

#Clear Outlook cache 
Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Microsoft\Outlook\RoamCache" | Remove-Item -Recurse -Confirm:$false

#Clear Teams Cache
Get-ChildItem -Path "$env:APPDATA\Microsoft\Teams" | Remove-Item -Recurse -Confirm:$false

#Vider la corbeille
Clear-RecycleBin -Force
