# specify the node base image with your desired version node:<version>
FROM node:alpine


# Create directory if it doesn't exist, 
WORKDIR /usr/src/app



# Install dependencies first, add code later: docker is caching by layers
# COPY .npmrc .npmrc
COPY package.json package.json
# For npm@5 or later, copy package-lock.json as well
COPY package.json package-lock.json ./

# Docker base image is already NODE_ENV=production
RUN npm install

# Add your source files
COPY . .

# Avoid leaking credentials to private npm registries
RUN rm -f .npmrc


ARG GIT_REPO="unknown"
ARG GIT_COMMIT="unknown"
ARG GIT_BRANCH="unknown"
ARG BUILD_TIME="unknown"

LABEL name="Koa Kubernetes Example" \
  maintainer="StevenACoffman" \
  git-repo="$GIT_REPO" \
  git-commit="$GIT_COMMIT" \
  git-branch="$GIT_BRANCH" \
  version="$GIT_COMMIT" \
  build_time="$BUILD_TIME" \
  description="Example Flask app with Prometheus for Kubernetes"

# replace this with your application's default port
ENV PORT 8888

EXPOSE ${PORT}

# Silent start because we want to have our log format as the first log
CMD ["npm", "start", "-s"]
