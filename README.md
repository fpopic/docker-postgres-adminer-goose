# docker-postgres-adminer-goose

Used:
- [goose](https://github.com/pressly/goose)

Steps:
1. Clone the repository
    ```shell script
    git clone git@github.com:fpopic/docker-postgres-adminer-goose.git
    cd docker-postgres-adminer-goose
    ```

1. Spin up composed services: `postgres`, `adminer`, `goose` with entrypoint: `/go/bin/goose -env=default up`
    ```shell script
    docker-compose up --build
    ```

1. Run goose standalone:
    ```shell script
    docker-compose run goose status
    docker-compose run goose create <name_of_migration> sql
    # edit db/migrations/<name_of_migration>.sql
    docker-compose run goose up
    ```

1. Check changes in adminer:
    ```shell script
    open 'http://localhost:8080/?pgsql=migrations-postgres&username=goose&db=goose&ns=public'
    ```
