# docker-postgres-adminer-poc

Used:
- [goose](https://bitbucket.org/liamstask/goose/)
- [dockerzied goose](https://github.com/shopkeep/goose/)

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
    docker-compose run goose create add_schema sql
    ```