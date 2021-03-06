# koa_kubernetes_example
Simple Kubernetes Koa2 Node.js Docker application

+ Incorporates the many good ideas in [node-docker-good-defaults](https://github.com/BretFisher/node-docker-good-defaults/) and Adrian Mouat's [Tricks Of The Captains](https://container-solutions.com/content/uploads/2017/04/TricksOfTheCaptains-2.pdf)

### TL;DR version
Run this locally in docker:
```bash
docker run -p 8888:8888 stevenacoffman/koa_kubernetes_example
```

Apply this to your Kubernetes cluster (Note: cluster not included):
```bash
kubectl apply -f koa-example.yaml
```

Todo: Add prometheus monitoring using [this example](https://github.com/RisingStack/example-prometheus-nodejs/blob/master/src/server.js)
## Node + Docker Hello World, for Showing Good Defaults for Using Node.js in Docker

> This tries to be a "good defaults" example of using Node.js in Docker for local development and shipping to production with all the bells, whistles, and best practices. Issues/PR welcome.

### Local Development Features

 - **Dev as close to prod as you can**. docker-compose builds a local development image that is just like production image except for the below dev-only features needed in image. Goal is to have dev env be as close to test and prod as possible while still giving all the nice tools to make you a happy dev.
 - **Prevent needing node/npm on host**. Installs `node_modules` outside app root in container so local development won't run into a problem of bind-mounting over it with local source code. This means it will run `npm install` once on container build and you don't need to run npm on host or on each docker run. It will re-run on build if you change `package.json`.
 - **One line startup**. Uses `docker-compose up` for single-line build and run of local development server.
 - **Edit locally while code runs in container**. docker-compose uses proper bind-mounts of host source code into container so you can edit locally while running code in Linux container.
 - **Use nodemon in container**. docker-compose uses nodemon for development for auto-restarting node in container when you change files on host.
 - **Enable debug from host to container**. opens the legacy debug port 5858 and new inspect port 9229 for using host-based debugging like chrome tools or VS Code. Nodemon enables `--inspect` by default in docker-compose, but you can change to `--debug` for < 6.3 debugging.
 - **Provides VSCode debug config**. for Visual Studio Code fans, `.vscode` has a config for both `--debug` and `--inspect` node options.
 - **Small image and quick re-builds**. `COPY` in `package.json` and run `npm install && npm cache clean` **before** `COPY` in your source code. This saves big on build time and keep container lean.


### Production-minded Features

 - **Use Docker build-in healthchecks**. uses Dockerfile `HEALTHCHECK` with `/healthz` route to help Docker know if your container is running properly (example always returns 200, but you get the idea).
 - **Proper NODE_ENV use**. Defaults to `NODE_ENV=production` in Dockerfile and overrides to `development` in docker-compose for local dev.
 - **Don't add dev dependencies into production image**. Proper `NODE_ENV` use means dev dependencies won't be installed in container by default. Using docker-compose will build with them by default.
 - **Enables proper SIGTERM/SIGINT for graceful exit**. Defaults to `node index.js` rather then npm for allowing graceful shutdown of node. npm doesn't pass SIGTERM/SIGINT properly (you can't ctrl-c when running `docker run` in foreground). To get `node index.js` to graceful exit, extra signal-catching code is needed. The `Dockerfile` and `index.js` document the options and links to known issues.


### Assumptions

 - You have Docker and Docker-Compose installed (Docker for Mac, Docker for Windows, get.docker.com and manual Compose installed for Linux).
 - You want to use Docker for local development (i.e. never need to install node/npm on host) and have dev and prod Docker images be as close as possible.
 - You don't want to loose fidelity in your dev workflow. You want a easy environment setup, using local editors, node debug/inspect, local code repo, while node server runs in a container.
 - You use `docker-compose` for local development only (docker-compose was never intended to be a production deployment tool anyway).
 - The `docker-compose.yml` is not meant for `docker stack deploy` in Docker 1.13, it's meant for happy local development.


### Getting Started

If this was your Node.js app, to start local development you would:

 - Running `docker-compose up` is all you need. It will:
 - Build custom local image enabled for development (nodemon, `NODE_ENV=development`).
 - Start container from that image with ports 80, 5858, and 9229 open (on localhost).
 - Starts with `nodemon` to restart node on file change in host pwd.
 - Mounts the pwd to the app dir in container.
 - If you need other services like databases, just add to compose file and they'll be added to the custom Docker network for this app on `up`.
 - Compose should detect if you need to rebuild due to changed package.json or Dockerfile, but `docker-compose build` works for manually building.
 - Be sure to use `docker-compose down` to cleanup after your done dev'ing.
