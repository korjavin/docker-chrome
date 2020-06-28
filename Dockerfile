FROM golang:1.13-stretch

RUN wget $CHROME_DEB_HOST/google-chrome/google-chrome-74.0.3729.169_amd64.deb -q
RUN dpkg -i google-chrome-74.0.3729.169_amd64.deb || true
RUN apt-get update
RUN apt-get install -f -y -qq > /dev/null
