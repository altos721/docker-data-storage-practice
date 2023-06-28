FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# VOLUME ["/app/node_modules"]

CMD ["npm", "start"]

#docker run -d --rm -p 3000:80 -e PORT=80 --name feedback-app -v feedback:/app/feedback -v "/Users/chihhaohsu/Udemy/max_docker/44_data-volumes-01-starting-setup:/app:ro" -v /app/temp -v /app/node_modules feedback-node:volumes