::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJH+t2GdwDBRDQgiNPW+GKpo7x6by7OXn
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFCh8ZSajD0qUOpEZ++Pv4Pq7o14ZNA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
:index
cls
@ECHO OFF
color E
echo ----------------------------------------------------------------------------------------                           
echo  ____        ____     ______                 ____                   __  __     
echo /\  _`\     /\  _`\  /\__  _\      v1       /\  _`\     /'\_/`\    /\ \/\ \    
echo \ \ \L\ \   \ \ \L\ \\/_/\ \/               \ \ \L\_\  /\      \   \ \ \ \ \   
echo  \ \ ,  /    \ \ ,__/   \ \ \  By Shi_ba'San \ \  _\L  \ \ \__\ \   \ \ \ \ \  
echo   \ \ \\ \    \ \ \/     \_\ \__              \ \ \L\ \ \ \ \_/\ \   \ \ \_\ \ 
echo    \ \_\ \_\   \ \_\     /\_____\              \ \____/  \ \_\\ \_\   \ \_____\
echo     \/_/\/ /    \/_/     \/_____/               \/___/    \/_/ \/_/    \/_____/
echo -----------------------------------------------------------------------------------------
echo ____________________________________
echo:
echo   1 (Online Eth0) If you Make Bridge Network (Openvpn install Require!) Manual in My Github
echo:
echo   2 (offline) if you not ever to do anythings !
echo ____________________________________
echo:
set /P INPUT=Type of Run : %=%
echo:
echo ____________________________________
echo:
if %input% gtr 2 goto index
:checker
set check=0
)
echo Check Kernel File...
if exist kernel-qemu-4.14.79-stretch (
	echo : Okay :
) else (
    echo Lost ????
	set check=1
)
echo Check Raspbian Image File...
if exist 2018-11-13-raspbian-stretch.img (
	echo : Okay :
) else (
    echo Lost ????
	set check=1
)
echo ____________________________________
echo:
if %check% == 1 goto error
if %input% == 1 goto net
if %input% == 2 goto offline


:error
color c
echo ----------------------
echo Some File Lost checkit !
echo ----------------------
pause
exit
:net
@arm.exe -kernel kernel-qemu-4.14.79-stretch -dtb versatile-pb.dtb -m 256 -M versatilepb -cpu arm1176 -display sdl -serial stdio -append "rw console=ttyAMA0 root=/dev/sda2 rootfstype=ext4  loglevel=8 rootwait fsck.repair=yes memtest=1" -drive file=2018-11-13-raspbian-stretch.img,format=raw -no-reboot -net nic -net tap,ifname=TAP > nul
exit
:offline
@arm.exe -kernel kernel-qemu-4.14.79-stretch -dtb versatile-pb.dtb -m 256 -M versatilepb -cpu arm1176 -display sdl -serial stdio -append "rw console=ttyAMA0 root=/dev/sda2 rootfstype=ext4  loglevel=8 rootwait fsck.repair=yes memtest=1" -drive file=2018-11-13-raspbian-stretch.img,format=raw -no-reboot > nul
exit