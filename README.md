# Multi Env Build

This project demonstrates how to use the same Docker image for multiple environments (DEV, UAT, PROD...). It can pick up the corresponding environment config using the variable passed into the Docker container.

## How It's Made:

**Tech used:** Reactjs, Nginx, Docker

Here's how the project works:

- Build a Docker image, copying the config files (env-\*.js) and the bash file (start.sh).
- The bash file reads the injected variable at runtime ($ENV), then decides which env.js file to use and move it into the nginx folder.
- The webapp reads the config from that env.js file.

## References:

This project is based on these guides:

**Stackoverflow:** https://stackoverflow.com/questions/70617812/change-environmet-variables-at-runtime-react-vite-with-docker-and-nginx
