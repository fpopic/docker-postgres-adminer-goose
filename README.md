# docker-postgres-adminer-poc

Used:
- [goose](https://bitbucket.org/liamstask/goose/)

1. Clone the repository
    ```shell script
    git clone git@github.com:fpopic/docker-postgres-adminer-goose.git
    cd docker-postgres-adminer-goose
    ```

2. Spin up services: postgres, adminer, goose
    ```shell script
    docker-compose up --build
    ```

3. Run goose:
    ```shell script
    docker-compose run goose status
    docker-compose run goose create <name_of_migration> sql
    # edit db/migrations/<name_of_migration>.sql
    docker-compose run goose up
    ```

4. Check changes in adminer:
  ```shell script
  open 'http://localhost:8080/?pgsql=migrations-postgres&username=goose&db=goose&ns=public'
  ```
