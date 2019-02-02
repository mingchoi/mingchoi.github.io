---
layout: post
title: Installing Chrome OS on laptop
---

# Intro
This tutorial will be using [chromefy](https://github.com/imperador/chromefy) to generate the Chrome OS image.

# Prepare Image

### Chromium OS (needed)
[Chromium OS image](https://chromium.arnoldthebat.co.uk/?dir=special) is needed as a basic image that will turn into a ChromeOS image later on.

### Chrome OS Image (needed)
You will need both **eve** and **caroline** from [here](https://cros-updates-serving.appspot.com/) for generating the ChromeOS image.

### Generator Script
[chromefy.sh](https://github.com/imperador/chromefy/releases)

# Generate the install image
`sudo bash chromefy.sh chromium.img recovery.bin caroline.bin`

# Create install media
```
# Check your usb stick id
lsblk

# Write to USB drive
dd if=chromium.img of=/dev/sdX bs=4M
```

