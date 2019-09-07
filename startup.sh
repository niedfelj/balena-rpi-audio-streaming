#/bin/bash

echo "Copying icecast2 service and config..."
cp icecast2 /etc/default/
cp icecast.xml /etc/icecast2/

echo "Starting icecast2 service"
service icecast2 start
sleep 2

# Hacky way to wait for USB card
until [ -f /proc/asound/card1 ]
do
  echo "Waiting for USB device 1 in /proc/asound/card1"
  sleep 5
done

echo "USB device detected. Starting darkice..."
darkice -c ./darkice.cfg