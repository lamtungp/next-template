#!/bin/bash
if [ $DEBUG == "1" ]; then
    echo "DEBUG=1"
    echo "start create table ..."
    chmod +x /app/wait-for-it.sh
    /app/wait-for-it.sh 10.0.3.13:5432 --strict --timeout=300
    # npx sequelize migrate:db

    echo "Seed data ..."
    # npx sequelize db:seed:all

    echo "start dev ...."
    yarn dev
else
    echo "DEBUG=0"
    echo "start create table ..."
    chmod +x /app/wait-for-it.sh
    /app/wait-for-it.sh db:5432 --strict --timeout=300
    # npx sequelize migrate:db

    echo "start build and start ..."
    yarn build
    yarn start
fi
