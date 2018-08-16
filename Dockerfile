FROM       python
RUN        apt-get update
RUN        DEBIAN_FRONTEND='noninteractive' apt-get -y install python3-pip
COPY       /Telegram-Kraken-Bot /Telegram-Kraken-Bot
WORKDIR    /Telegram-Kraken-Bot
RUN        pip3 install -r requirements.txt
RUN        pip3 install python-telegram-bot -U
RUN        pip3 install beautifulsoup4 -U
RUN        pip3 install krakenex -U
ENV        SHELL=/bin/bash
CMD        ["python3", "/Telegram-Kraken-Bot/telegram_kraken_bot.py"]