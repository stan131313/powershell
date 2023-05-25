$directoryPath = "C:\Users\stan\Desktop\test"
# if newCode have \ need changed to \\ 
$newCode="This is a new line"
$txtFiles = Get-ChildItem -Path $directoryPath -Filter "*.txt" -File
foreach ($file in $txtFiles) {
	Add-Content $file.FullName "`n$newCode"
}
pause