## Home lab

This repository contains the scripts I use to setup the tools I'm using on my local network.

It is using Docker Compose.

I host those tools on a Synology NAS on which I installed Docker/ContainerManager.

## Networks

### Frontend

A bridge network I'm using for most of the tools.

### Priv-lan

A macvlan network I'm using to expose some tools directly to my local network.

### Backend

A bridge network I'm using for Unifi.

## Tools

### Network

#### [Traefik](https://traefik.io/)

Reverse proxy I'm using to access every other tools through SSL

It is configured to use Cloudflare as certificate provider

#### [PiHole](https://pi-hole.net/)/[Cloudflared](https://github.com/cloudflare/cloudflared)

DNS sinkhole to remove ads at network level.

It is configured to use Cloudflared to resolve DNS over https.

#### [DDNS Updater](https://github.com/qdm12/ddns-updater)

My IP address isn't static, this tool keeps my domain on Cloudflare synced with my public IP address.

#### [Unifi Network Application (ex Controller)](https://ui.com/) / Database

I'm using Unifi devices on my local network. This is used to setup them.

#### [Wireguard Easy](https://github.com/wg-easy/wg-easy)

Wireguard VPN I'm using to access my local network. This tool permits to easily set it up.

It requires the installation of an SPK on Synology https://www.blackvoid.club/wireguard-spk-for-your-synology-nas/

#### [OpenVPN](https://openvpn.net/)

I'm having this VPN as another option to access my local network as Wireguard isn't supported by some systems.

### Home Automation

#### [HomeBridge](https://homebridge.io/)

I'm using this tool to send my camera feeds to Homekit, and combining them with a motion sensor. If it triggers, I'm getting a notification with a picture from the camera.

#### [Home Assistant](https://www.home-assistant.io/)

I'm hosting it using Virtual Machine Manager. I'm thinking about moving it to Docker.

### Other tools

#### [Portainer](https://www.portainer.io/)

I'm using it to manage my Docker containers, look at logs, etc.

#### [Watchtower](https://containrrr.dev/watchtower/)

A tool that looks for Docker image updates every Monday and send me a notification

#### [OpenSpeedTest](https://openspeedtest.com/)

I'm using this tool to test my internal network.

#### [Ntfy](https://ntfy.sh/)

I'm using this tool to send internal notifications, like the ones from WatchTower.

This isn't working perfectly on iOS and not on local network, but ok for what I need.

#### [n8n](https://n8n.io/)

A workflow automation tool that is powerful and simple to use. A free alternative to Zapier.

#### [Vaulwarden server](https://github.com/dani-garcia/vaultwarden)

A bitwarden server implementation I'm using to store my credentials.

#### [Dashy](https://dashy.to/)

A dashboard to centralize the links of all the tools.

#### [Webhook](https://github.com/adnanh/webhook/)

A webhook server that I'm using to trigger deployment of my portfolio from Github.

I created my own image to have access to Docker.

#### [Old portofolio](https://david.bertet.fr/old)

An old PHP portfolio I'm keeping around
