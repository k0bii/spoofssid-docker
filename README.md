# spoofssid-docker
Docker container to spoof popular SSID's
Idea taken from https://jerrygamblin.com/2016/11/27/spoofing-the-top-5000-ssids/

This will work if your wifi is wlan0 if not you may need to alter this.

if your wifi is different please fork this project and alter the wlan0 to your wifi adaptor.

how to run

```
sudo docker run --privileged --net=host -it txt3rob/spoofssid-docker /bin/bash start.sh
```

[![capture.png](https://s26.postimg.org/4ju3ybieh/capture.png)](https://postimg.org/image/j318zqbj9/)


Raspberry Pi Version
----

```
git clone https://github.com/random-robbie/spoofssid-docker.git
cd spoofssid-docker
rm Dockerfile
mv Dockerfile.armhf Dockerfile
cd ..
docker build -t latest spoofssid-docker
sudo docker run --privileged --net=host -it latest:latest /bin/bash start.sh
```

if any of this is wrong please let me know.





To Do:
----

Work out how to auto find wifi device and only assign the wifi adaptor not whole host.

if you know hit me up
