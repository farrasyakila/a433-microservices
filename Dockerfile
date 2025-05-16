# install base image nodejs 
FROM node:14

# membuat working directory
RUN mkdir -p /app

# set working directory
WORKDIR /app

# copy source code ke working directory
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-dbsebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# install dependency

RUN npm install --production --unsafe-perm && npm run build

#expose port
EXPOSE 8080

#jalankan command
CMD [ "npm", "start" ]
