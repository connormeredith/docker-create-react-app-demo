# docker-create-react-app-demo

This repo demonstrates how to use create-react-app with Docker. You can clone the repo and try it out for yourself.

## Dockerising an existing project.

You can copy the following files into your own project and modify them to suit your needs.

```
docker-create-react-app-demo
├── .dockerignore
├── Dockerfile
└── docker-compose.yml
```

## Build the container.

```bash
$ docker-compose build
```

## Start the development server.

Your local folders are shared between the container, so any changes you make locally are reflected in the container and the app will reload.

```bash
$ docker-compose up
```

View the app in the browser by navigating to http://localhost:3000.

## Use available npm scripts.

You can run any commands in your `package.json` in the container, any generated assets will also appear in your local folders.

```bash
$ docker-compose run app <command>

# Run the tests.
$ docker-compose run app npm test

# Create a production build.
$ docker-compose run app npm build
```

## Install new dependencies.

You can also install new dependencies via Docker, your local `package.json` and `package-lock.json` are updated too.

```bash
$ docker-compose run app npm install --save react-router
```

## Inspect the container.

If you're curious as to what is inside the container you can run a shell and navigate around or run other commands:

```bash
$ docker-compose run app sh
```

## Remove all built containers.

```bash
$ docker-compose down
```
