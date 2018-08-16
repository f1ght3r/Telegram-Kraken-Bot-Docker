# Telegram-Kraken-Bot-Docker

Based on [Telegram-Kraken-Bot](https://github.com/Endogen/Telegram-Kraken-Bot).

## Overview
A docker container running [Telegram-Kraken-Bot](https://github.com/Endogen/Telegram-Kraken-Bot) for Telegram app.

## Installation

Clone [Telegram-Kraken-Bot](https://github.com/Endogen/Telegram-Kraken-Bot) into the **same** folder as Telegram-Kraken-Bot-Docker so that your file structure looks like this:
- Working directory
  - Dockerfile
  - Telegram-Kraken-Bot

**Before building the image make sure to follow the configuration part of [Telegram-Kraken-Bot](https://github.com/Endogen/Telegram-Kraken-Bot#configuration)**

After configuration you can build the image using the following command :
(make sure your working directory is correct, otherwise the command will fail)
```
docker build -t tag-name .
```

Then start the container using :
```
docker run -i -t tag-name
```
