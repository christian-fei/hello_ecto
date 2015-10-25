# HelloEcto

# setup

## postgres

```
CREATE USER postgres WITH CREATEDB PASSWORD 'postgres';
```

## docker
```
docker-compose build
docker-compose run web mix ecto.create
docker-compose run web mix ecto.migrate
docker-compose run web mix run priv/repo/seed.exs
```


just run

```
docker-compose up
```
