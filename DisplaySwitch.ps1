#while($true){echo $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")}
$KeyPress = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
optionValue = $KeyPress.VirtualKeyCode -band 3
switch(optionValue)
{
    1{displayswitch.exe /internal} #Display 1 is the only screen active
    2{displayswitch.exe /clone} #Clone Display 1 to every connected monitor
    3{DisplaySwitch.exe /extend} #All Displays are active
    4{DisplaySwitch.exe /external} #show only on a projector
}