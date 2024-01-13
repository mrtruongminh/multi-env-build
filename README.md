<!-- - Build Docker image
- Serve with Node server (or just use Node server to read and write? still serve with nginx)
- Run image + pass env from docker-compose
- Node server read that env => write into env.js
- App reads from env.js -->

- Set up multiple .env files
- Build Docker image
- docker-compose: pass a variable called ENVIRONMENT (DEV, UAT...)
- how to read?
  <!-- => Nodejs server read + serve app -->
  <!-- => JS file that can read env? -->
  => bash file read env => run correct js file to generate env.js
