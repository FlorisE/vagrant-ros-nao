# Adding multiverse sources.
cat > /etc/apt/sources.list.d/multiverse.list << EOF
deb http://archive.ubuntu.com/ubuntu trusty multiverse
deb http://archive.ubuntu.com/ubuntu trusty-updates multiverse
deb http://security.ubuntu.com/ubuntu trusty-security multiverse
EOF

# Add packages.ros.org repository to sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" \
> /etc/apt/sources.list.d/ros-latest.list'

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
source ~/.bashrc

# Get rosinstall
sudo apt-get -y --force-yes install python-rosinstall
