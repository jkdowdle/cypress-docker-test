# use Cypress provided image with all dependencies included
FROM cypress/base:10
RUN node --version
RUN npm --version
WORKDIR /app
# copy our test page and test files
COPY index.html cypress.json package.json package-lock.json ./
COPY cypress ./cypress

# avoid many lines of progress bars during install
# https://github.com/cypress-io/cypress/issues/1243
ENV CI=1

# install NPM dependencies and Cypress binary
RUN npm ci
# check if the binary was installed successfully
RUN $(npm bin)/cypress verify

CMD ["yarn", "cypress:run"]

# FROM node:9-alpine

# WORKDIR /app

# COPY package.json yarn.lock /tmp/
# # RUN cd /tmp && yarn
# RUN cd /tmp && npm config set "@fortawesome:registry" https://npm.fontawesome.com/ && npm config set "//npm.fontawesome.com/:_authToken" 6024FCBF-7F69-4E14-AC53-119A2DA8697A && yarn

# COPY . /app
# RUN ln -s /tmp/node_modules
# EXPOSE 3000

# CMD ["yarn", "start"]
