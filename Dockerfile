FROM node:8-alpine

WORKDIR /code/

RUN npm i elm

ENV PATH "/code/node_modules/elm/binwrappers:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

COPY . .

RUN elm-make Todo.elm --output elm.js
