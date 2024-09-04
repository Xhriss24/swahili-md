FROM node:lts-buster
RUN git clone https://github.com/Xhriss24/swahili-md/ /root/Xhriss24
WORKDIR /root/Xhriss24/
RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install
EXPOSE 8000
CMD ["npm", "start"]￼Enter
