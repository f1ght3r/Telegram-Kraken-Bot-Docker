FROM    alpine:3.8
RUN     apk update
RUN     apk add --no-cache python3 && \
        python3 -m ensurepip && \
        rm -r /usr/lib/python*/ensurepip && \
        pip3 install --upgrade pip setuptools && \
        if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
        if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python;    fi && \
        rm -r /root/.cache
COPY    /Telegram-Kraken-Bot /Telegram-Kraken-Bot
WORKDIR /Telegram-Kraken-Bot
RUN     pip3 install -r requirements.txt
RUN     pip3 install python-telegram-bot -U
RUN     pip3 install beautifulsoup4 -U
RUN     pip3 install krakenex -U
ENV     SHELL=/bin/bash
CMD     ["python3", "/Telegram-Kraken-Bot/telegram_kraken_bot.py"]