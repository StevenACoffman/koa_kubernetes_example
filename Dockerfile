# specify the node base image with your desired version node:<version>
FROM node:alpine


# Create app directory
WORKDIR /usr/src/app


# replace this with your application's default port
ENV PORT 8888

EXPOSE ${PORT}

# Install dependencies first, add code later: docker is caching by layers
# COPY .npmrc .npmrc
COPY package.json package.json
# For npm@5 or later, copy package-lock.json as well
COPY package.json package-lock.json ./

# Docker base image is already NODE_ENV=production
RUN npm install

# Add your source files
COPY . .

RUN rm -f .npmrc


ARG GIT_COMMIT=unknown
LABEL git-commit=$GIT_COMMIT
ARG GIT_BRANCH=unknown
LABEL git-branch=$GIT_BRANCH
ARG BUILD_TIME=unknown
LABEL build_time=$BUILD_TIME

# Silent start because we want to have our log format as the first log
CMD ["npm", "start", "-s"]
