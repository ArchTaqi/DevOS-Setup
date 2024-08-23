#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm install --lts
nvm use --lts

npm i -g yarn
npm i -g pm2
npm i -g prettier
npm i -g eslint
npm i -g @aws-amplify/cli
npm i -g @sanity/cli
npm i -g babel-cli
npm i -g expo-cli
npm i -g firebase-tools
npm i -g gatsby-cli
npm i -g jest
npm i -g lighthouse
npm i -g netlify-cli
npm i -g newman
npm i -g node-sass
npm i -g parcel-bundler
npm i -g serve
npm i -g spaceship-prompt
npm i -g surge
npm i -g typescript
npm i -g update
npm i -g vercel
