
1. Download and install toolchain
https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads

2. Install QEMU
$ sudo apt install qemu

3. Setup QtCreator
Add gdb-multiarch, add C/C++ crosscompiler, add custom kit and create target device commection:
Host: *localhost:1234*
Init commands:
*set remote hardware-breakpoint-limit 6
set remote hardware-watchpoint-limit 4
monitor reset halt
load
monitor reset halt*
Reset commands:
*monitor reset halt*


4. Run QEMU ARM emulator
qemu-system-arm -M versatilepb -m 128M -nographic -s -S

5. Start debugging in QtCreator.

6. ????

7. PROFIT!!!