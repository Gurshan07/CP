FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

ENV MONGO_URI=
ENV PORT=3000
ENV JWT_SECRET=
ENV ADMIN_SECRET_KEY=
ENV NODE_ENV=
ENV CLIENT_URL=

ENV CLOUDINARY_CLOUD_NAME=
ENV CLOUDINARY_API_KEY=
ENV CLOUDINARY_API_SECRET=

CMD ["npm", "start"]
