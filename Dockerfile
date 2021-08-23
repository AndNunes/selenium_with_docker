FROM python:3.7.7-slim-stretch

RUN apt-get update -y && \
    apt-get install -y xvfb unzip

RUN apt-get update && \
    apt-get install -y gnupg wget curl unzip --no-install-recommends && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list && \
    apt-get update -y && \
    apt-get install -y google-chrome-stable && \
    CHROME_VER=$(google-chrome --product-version | grep -o "[^\.]*\.[^\.]*\.[^\.]*") && \
    DRIVER_VER=$(curl -s "https://chromedriver.storage.googleapis.com/LATEST_RELEASE_$CHROME_VER") && \
    wget -q --continue -P /chromedriver "http://chromedriver.storage.googleapis.com/$DRIVER_VER/chromedriver_linux64.zip" && \
    unzip /chromedriver/chromedriver* -d /chromedriver
    
RUN chmod 755 /chromedriver/chromedriver

RUN pip install selenium

ENTRYPOINT ["bash"]