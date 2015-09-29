# Adding multiverse sources.
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu trusty multiverse"
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu trusty-updates multiverse"
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu trusty-security multiverse"

# Add packages.ros.org repository to sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' 

# Set up key
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xB01FA116

# Update packages
sudo apt-get -y --force-yes update

# Install ROS jade
sudo apt-get -y --force-yes install ros-jade-desktop-full

# Initialize rosdep
sudo rosdep init
rosdep update

# Environment setup
echo "source /opt/ros/jade/setup.bash" >> ~/.bashrc
echo "source /opt/ros/jade/setup.bash" >> ~/.bash_login
source ~/.bashrc

# Get rosinstall
sudo apt-get -y --force-yes install python-rosinstall