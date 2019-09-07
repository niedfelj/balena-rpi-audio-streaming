## Balena RPi3 Streaming (shoutcast/icecast server for a USB input device)

You'll need a Raspberry Pi and preferably a STEREO (most are mono) USB input device like this:

https://smile.amazon.com/gp/product/B00WPVQXS0

https://smile.amazon.com/gp/product/B000KW2YEI


Once you've got the image deployed via Balena to your device, you can find the URL for the stream by running this on your computer on the same network as your device using the Balena CLI:

`sudo balena scan`

It will return something like this:

```
Reporting scan results
- 
  host:          67236e9.local
  address:       192.168.0.115
  dockerInfo: 
    Containers:        2
    ContainersRunning: 1
    ContainersPaused:  0
    ContainersStopped: 1
    Images:            2
    Driver:            aufs
    SystemTime:        2019-09-07T18:28:11.228518643Z
    KernelVersion:     4.14.98
    OperatingSystem:   balenaOS 2.38.0+rev1
    Architecture:      armv7l
  dockerVersion: 
    Version:    18.09.6-dev
    ApiVersion: 1.39
```

You can then access the Icecast2 interface (default user/password are admin/hackme) using the host returned, like this:

http://67236e9.local:8000/

And the stream will be something like this (use the m3u icon on the admin page to get the url):

http://67236e9.local:8000/rapi.mp3.m3u

Add it to a custom radio in Sonos (you can only do this via the desktop app, in the top menu) and use it to stream anything!

Credit to replayreb for his Instructable

https://www.instructables.com/id/Add-Aux-to-Sonos-Using-Raspberry-Pi/



