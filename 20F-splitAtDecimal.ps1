$TextFile= get-content C:\my_apps\PSP2\total.txt
New-Item -Type file -Path "C:\my_apps\PSP2" -Name 'hours.txt'
New-Item -Type file -Path "C:\my_apps\PSP2" -Name 'mins.txt'
New-Item -Type file -Path "C:\my_apps\PSP2" -Name 'seconds.txt'
Foreach ($Line in $TextFile)
{
    $b=$Line.split('.'),""
    $c=$b[0]
    $x=$c[0]
    $y=$c[1]
    $z=$c[2]
    foreach ($w in $x)
    {
    Write-Output $w | Add-Content C:\my_apps\PSP2\hours.txt
    }
    foreach ($w in $y)
    {
    Write-Output $w | Add-Content C:\my_apps\PSP2\mins.txt
    }
    foreach ($w in $z)
    {
    Write-Output $w | Add-Content C:\my_apps\PSP2\seconds.txt
    }
}
notepad C:\my_apps\PSP2\hours.txt
notepad C:\my_apps\PSP2\mins.txt
notepad C:\my_apps\PSP2\seconds.txt