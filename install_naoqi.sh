mkdir ~/naoqi
cp /vagrant/naoqi-sdk-2.1.3.3-linux64.tar.gz /vagrant/pynaoqi-python2.7-2.1.3.3-linux64.tar.gz ~/naoqi
cd ~/naoqi

tar xzf naoqi-sdk-2.1.3.3-linux64.tar.gz
tar xzf pynaoqi-python2.7-2.1.3.3-linux64.tar.gz

export PYTHONPATH=~/naoqi/pynaoqi-python2.7-2.1.3.3-linux64:$PYTHONPATH

echo 'export PYTHONPATH=~/naoqi/pynaoqi-python2.7-2.1.3.3-linux64:$PYTHONPATH' >> ~/.bashrc

rm pynaoqi-python2.7-2.1.3.3-linux64.tar.gz
rm naoqi-sdk-2.1.3.3-linux64.tar.gz
