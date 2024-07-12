FROM node:20.15.1-slim as build

WORKDIR /work
COPY src /work

RUN npm install
RUN npm run build

FROM nginx:1.27.0 as publish

COPY --from=build /work/dist /usr/share/nginx/html
EXPOSE 80