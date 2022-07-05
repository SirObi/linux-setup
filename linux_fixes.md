**Restart Linux sound service**

`pulseaudio -k && sudo alsa force-reload`

**Crackling, choppy sound on Steam**  
https://www.youtube.com/watch?v=UQ-Ml78kiEE

**Upgrading Pop!OS/Ubuntu**  
https://askubuntu.com/questions/1239025/after-upgrade-to-ubuntu-20-04-oh-no-something-went-wrong

https://www.reddit.com/r/pop_os/comments/ga0dl7/problems_updating_system_after_update_to_2004_beta/

https://support.system76.com/articles/upgrade-pop/

**Airpods not working**
https://github.com/pop-os/pop/issues/810

`sudo nano /etc/bluetooth/main.conf`  

```conf
[General]
ControllerMode = bredr
```

And RESTART COMPUTER.


~~Pulseaudio GUI is then helpful in setting them to Headset mode (so that the mic also works).~~  (unfortunately, Pulseaudio is no longer used in Pop!OS as of version 22)

**Running Battle For Middlearth with mods**  
WINEPREFIX=<whichever version of Windows emulator on your machine you want to use> wine lotrbfme2ep1.exe -mod "C:/Program Files/AOTR7.2/aotr"

