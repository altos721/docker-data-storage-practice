FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# VOLUME ["/app/node_modules"]

CMD ["npm", "start"]

#docker run -d --rm -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/Users/chihhaohsu/Udemy/max_docker/44_data-volumes-01-starting-setup:/app:ro" -v /app/temp -v /app/node_modules feedback-node:volumes