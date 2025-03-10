$editedFiles=get-childitem "E:\Github\RGT-Mission-files\Missions Files\RGT_BootCamp.Malden\functions" -Recurse| Where-Object { $_.LastWriteTime -gt (get-date).AddMinutes(-40)} | % { $_.FullName }
$missionFileDirectory="E:\Github\RGT-Mission-files\Missions Files"


$missionFileDirectory = get-childitem $missionFileDirectory | % { $_.FullName }

foreach($directory in $missionFileDirectory)
{

$directory+"\Functions\"
    foreach($editedfile in $editedFiles)
    {
        $position = $editedfile.IndexOf("\functions\") 
        $editedfile.Substring($position+10) 
        Copy-Item -Path $editedfile -Destination "$directory\Functions\$($editedfile.Substring($position+10) )"
    }

}