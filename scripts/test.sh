#!/bin/sh

echo Hello $TEST

if [ $TEST = "DEV" ]
then mv ./env-dev.js ../html/env.js
else mv ./env-uat.js ../html/env.js
fi