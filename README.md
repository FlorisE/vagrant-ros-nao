# vagrant-ros-nao
Vagrant initialization for a Ubuntu Virtual Machine with the packages for ROS and Nao preinstalled

## Usage:

Requirements: Vagrant, VirtualBox, naoqi SDK's for C++ and Python, version 2.1.3.3 

1. Install vagrant.
2. Install VirtualBox
3. Add the Naoqi SDK for C++ and Python to the root of the repository folder
4. In a shell, run vagrant up

## Powershell installation (Windows)
If Powershell and chocolatey are installed on your system, you can instead run init.ps1 using an administrative power shell, which will install vagrant and VirtualBox, as well as check whether naoqi SDK's are in the root of the repository folder, before calling vagrant up.

Powershell scriping has to be enabled, see https://technet.microsoft.com/library/ee176961.aspx for more information. 
