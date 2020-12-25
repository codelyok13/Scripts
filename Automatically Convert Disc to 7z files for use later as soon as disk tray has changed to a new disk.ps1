$drive = New-Object -ComObject Shell.Application

while($true)
{
    $name = $drive.NameSpace(17).Parsename("E:").Name.ToString()#.Substring(17)
    if($name.Equals("BD-RE Drive (E:)"))
    {
        echo "Its the same"
        Start-Sleep -Seconds 20
        continue;
    }

    $dst = "C:\Users\Admin\Desktop\Isos\Games\$name.7z"

    while(Test-Path $dst)
    {
        #Check if file exist, if it does add 2, else keep name the same
        $name = $name + "2"
    }
    $name = $name.Substring(17)
    $dst = "C:\Users\Admin\Desktop\Isos\Games\$name.7z"
    $src = "E:\"

    echo "Starting Compression"
    & "C:\Program Files\7-Zip\7z.exe" a $dst $src -mx9
    $drive.NameSpace(17).Parsename("E:").InvokeVerb("Eject")
    echo "Ending Compression"
}