# HelloEcto

# setup

## docker

```
docker-compose build
docker-compose run web mix ecto.create
docker-compose run web mix ecto.migrate
docker-compose run web mix run priv/repo/seed.exs
```
and finally

```
docker-compose up
```

OR



## dev machine

In psql console run:

```
CREATE USER postgres WITH CREATEDB PASSWORD 'postgres';
```

In the shell run:

```
web mix ecto.create
web mix ecto.migrate
web mix run priv/repo/seed.exs
```

and finally mix run --no-halt
