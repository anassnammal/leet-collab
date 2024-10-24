#!/bin/bash

set -e

source .env

docker run -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD -e POSTGRES_USER=$POSTGRES_USER -e POSTGRES_DB=$POSTGRES_DB -p 5432:5432 -d postgres

npm i

npm run prisma:test

npm run dev
