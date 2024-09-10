# base image.
FROM node:20

# envirement variables.
WORKDIR /app

COPY . .
# commands to run when the container starts.
RUN npm install            
RUN npm run build
RUN npx prisma generate

EXPOSE 3000

CMD [ "node", "dist/index.js" ]