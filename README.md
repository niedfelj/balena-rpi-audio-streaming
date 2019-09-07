Balena RPi3 Streaming (shoutcast/icecast server for USB input device)

You'll need a Raspberry Pi and preferably a STEREO (most are mono) USB input device like this:

https://smile.amazon.com/gp/product/B00WPVQXS0

https://smile.amazon.com/gp/product/B000KW2YEI


Once you've got the image deployed via Balena to your device, you can find the URL for the stream by using:

`sudo balena scan`

You can then access the Icecast2 interface (default user/password are admin/hackme) at (replacing the as4fjf9 with your device id):

http://as4fjf9.local:8000/

And the stream will be something like this (use the m3u icon on the admin page to get the url):

http://as4fjf9.local:8000/rapi.mp3.m3u

Add it to a custom radio in Sonos (you can only do this via the desktop app, in the top menu) and use it to stream anything!

Credit to replayreb for his Instructable

https://www.instructables.com/id/Add-Aux-to-Sonos-Using-Raspberry-Pi/



