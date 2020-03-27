
# RPI_ARM_Emulator
QEMU For Raspberry pi With Arm v.7 Emulator Work perfectly with Arm assembly

![enter image description here](https://github.com/thanatath/RPI_ARM_Emulator/blob/master/LOGO.png?raw=true)

![Screenshot.png](https://github.com/thanatath/RPI_ARM_Emulator/blob/master/Screenshot.png?raw=true)
**How to use**
1.	Clone this git to your pc
2.	Download image file at http://downloads.raspberrypi.org/raspbian/images/raspbian-2018-11-15/2018-11-13-raspbian-stretch.zip Extract it and drop *.img in root folder
3. Run RPI_EMU_SHIBASAN.exe

**What Working**
 - Arm HW Simulation so you can programing ARM Lang in this 
 - Network Access working with OpenVpn Tap Interface (How to please view to button)
 - Can use with offline environment
 - CodeBlocks Embeded
 - Ready to use with 1 click
 - support to latest stretch raspbian

**If you got a problem**
-Lost kernel file
You can re-download kernel file form my github --> kernel-qemu-4.14.79-stretch

-Lost raspbian Image file (common problem)
You can download image file from link http://downloads.raspberrypi.org/raspbian/images/raspbian-2018-11-15/2018-11-13-raspbian-stretch.zip <-- Use raspbian Image from this only


 
 **How to Internet Access With PI Emulator**
	 1.Install OpenVpn from official website
	 2.Goto Network connection setting in you windows
	 3.You will see about network adaptor in your windows
	 4.Left click to Openvpn adaptor and rename it to "TAP"
	 5.Select your working network adaptor and TAP Adaptor
	 6.Click Add to bridge
	 7.Wait for successfull connection
	 8.ready to run emulator
