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

#### Traefik

Reverse proxy I'm using to access every other tools through SSL

It is configured to use Cloudflare as certificate provider

#### PiHole/Cloudflared

DNS sinkhole to remove ads at network level.

It is configured to use Cloudflared to resolve DNS over https.

#### DDNS Updater

My IP address isn't static, this tool keeps my domain on Cloudflare synced with my public IP address.

#### Unifi Network Application / Database

I'm using Unifi devices on my local network. This is used to setup them.

#### Wireguard Easy

Wireguard VPN I'm using to access my local network. This tool permits to easily set it up.

It requires the installation of an SPK on Synology https://www.blackvoid.club/wireguard-spk-for-your-synology-nas/

#### OpenVPN

I'm having this VPN as another option to access my local network as Wireguard isn't supported by some systems.

### Home Automation

#### HomeBridge

I'm using this tool to send my camera feeds to Homekit, and combining them with a motion sensor. If it triggers, I'm getting a notification with a picture from the camera.

#### Home Assistant

I'm hosting it using Virtual Machine Manager. I'm thinking about moving it to Docker.

### Other tools

#### Portainer

I'm using it to manage my Docker containers, look at logs, etc.

#### Watchtower

A tool that looks for Docker image updates every Monday and send me a notification

#### OpenSpeedTest

I'm using this tool to test my internal network.

#### Ntfy

I'm using this tool to send internal notifications, like the ones from WatchTower.

This isn't working perfectly on iOS and not on local network, but ok for what I need.

#### n8n

A workflow automation tool that is powerful and simple to use. A free alternative to Zapier.

#### Vaulwarden server

A bitwarden server implementation I'm using to store my credentials.

#### Dashy

A dashboard to centralize the links of all the tools.

#### Webhook

A webhook server that I'm using to trigger deployment of my portfolio from Github

#### Old portofolio

An old PHP portfolio I'm keeping around
