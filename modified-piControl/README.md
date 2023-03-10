### To create .ko file for driver:

#### install kernel headers, which are required for the build
``sudo apt-get install -y raspberrypi-kernel-headers``

#### clone and navigate to folder
``cd .../modified-piControl``

#### compile module
``KDIR=/usr/src/linux-headers-$(uname -r) make``
#### or 
add ``KDIR :=/usr/src/linux-headers-$(shell uname -r)`` in Makefile

#### test module without overriding the release one
#### unload old module
``rmmod piControl``
#### or manuelly remove with 
``rm /lib/modules/4.19.95-rt38/extra/piControl.ko``
``rm /lib/modules/4.19.95-rt38-v7/extra/piControl.ko``

#### check if they are removed with 
``ls /lib/modules/4.19.95-rt38/extra/``
``ls /lib/modules/4.19.95-rt38-v7/extra/``

#### load new one
``insmod piControl.ko``
#### or:
``cp /home/pi/Desktop/piControl-master/piControl.ko /lib/modules/4.19.95-rt38/extra/``
``cp /home/pi/Desktop/piControl-master/piControl.ko /lib/modules/4.19.95-rt38-v7/extra/``

#### restart
``reboot``



#some warning can be fixed:
- warning: the frame size of XXX bytes is larger than YYY bytes
-> change ``FRAME_WARN`` in ``/usr/src/linux-headers-(linux header version)/lib/Kconfig.debug`` to more than YYY bytes

