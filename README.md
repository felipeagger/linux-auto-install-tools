# linux-auto-setup-dev-environment

This repository has bash scripts to automated create and install Dev Tools to Go Development (inside a container).

# Dependencies

- Curl (https://curl.se)
- Podman (https://podman.io)
- Distrobox (https://distrobox.privatedns.org)

Warning: if your distro is not fedora, install the above dependencies first.

# Description

Only Curl, Podman and Distrobox will be installed on your system.

After this step, the script will create a fedora:35 container using distrobox. 

Inside the container will be installed:

- Git
- Golang
- Curl 
- Wget
- Make
- Java-OpenJdk-devel

With GUI (Yes, it is possible to use tools with interface from a container):
- VSCode
- DBeaver
- Postman
- Firefox


# Usage

Clone this repository, and to start setup, execute:

```
sudo chmod a+x init.sh && sudo ./init.sh
```

if everything is successful, the output will be similar to this:
```
Ready To Code!!!
To Export instaled applications to your Host, execute: ./export.sh
```

Finally, to export the graphical tools, execute:
```
./export.sh
```


