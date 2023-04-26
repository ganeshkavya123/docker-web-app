FROM alpine:latest 
RUN apk add --no-cache nodejs npm

# Create app directory
WORKDIR /workspace

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /workspace
RUN npm install
COPY . /workspace

EXPOSE 8080
CMD [ "node", "start" ]