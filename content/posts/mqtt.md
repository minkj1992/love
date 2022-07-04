---
title: "MQTT"
subtitle: ""

summary: ""
description: ""

date: 2022-06-11T21:03:27+09:00
lastmod: 2022-06-11T21:03:27+09:00

author: "leoo.j"
authorLink: "https://github.com/minkj1992"

featuredImage: "/images/mqtt-cover.png"
tags: ["dev", "mqtt", "iot"]
categories: ["iot"]

lightgallery: true
draft: false
---

[MQTT](https://mqtt.org/) stands for MQ Telemetry Transport but previously was known as Message Queuing Telemetry Transport.
<!--more-->
<br />

## tl;dr
- Lightweight and Efficient
- Bi-directional Communications
  - This makes for easy broadcasting msgs to groups of things
- Scale to Millions of Things
- Reliable Message Delivery(QoS)
  - 0, 1, 2
- Support for Unreliable Networks
  - MQTT's support for persistent sessions reduces the time to reconnect the client with the broker.
- Security Enabled
  - easy to encrypt msg using TLS
  - also support OAuth

## MQTT Essentials
> https://www.hivemq.com/mqtt-essentials/

> *MQTT stands for MQ Telemetry Transport. The protocol is a set of rules that defines how IoT devices can publish and subscribe to data over the Internet.*