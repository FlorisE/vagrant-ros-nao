# install vagrant and virtualbox without prompting for confirmation
choco install vagrant VirtualBox -y

$NaoqiSDKCppExists    = Test-Path pynaoqi-python2.7-2.1.3.3-linux64.tar.gz
$NaoqiSDKPythonExists = Test-Path naoqi-sdk-2.1.3.3-linux64.tar.gz

# check if the user has added the naoqi C++ SDK for Linux to the installation directory
if ($NaoqiSDKCppExists -and $NaoqiSDKPythonExists) {
  vagrant up
} else {
  echo "NaoQi SDK for C++ and Python (version 2.1.3.3) are required. Please download these from the Aldebaran Developer Community web site and put them in this folder."
}
