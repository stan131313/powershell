$directoryPath = "C:\Users\stan\Desktop\test"
$txtFiles = Get-ChildItem -Path $directoryPath -Filter "*.txt" -File
# $oldText \ replace to \\"
$oldText = "Directory:%ProgramFileFolder32%\\project2013\\"
$newCode = "Directory:%ProgramFileFolder32%\project2014\"
foreach ($file in $txtFiles) {
    # Read the content of the file with the appropriate encoding
    echo $file.FullName
    $content = Get-Content -Path $file.FullName
    echo $content
    $newContent = $content -replace $oldText, $newCode
    $newContent | Set-Content -Path $file.FullName    
}
pause