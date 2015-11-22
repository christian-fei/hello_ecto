# HelloEcto

[![Build Status](https://travis-ci.org/christian-fei/hello_ecto.svg)](https://travis-ci.org/christian-fei/hello_ecto)


# setup

## docker-compose

```
docker-compose build
docker-compose run web mix ecto.create
docker-compose run web mix ecto.migrate
```
and finally

```
docker-compose up
```

### tldr;s

Launching missiles:
```
docker-compose build; docker-compose run web mix ecto.create; docker-compose run web mix ecto.migrate; docker-compose up
```

Raking the garden:
```
docker-compose run web mix run priv/repo/seed.exs
```

Dropping plates:
```
docker-compose run web mix ecto.drop
```







## dev machine

Alternatively, you can do the same without docker compose, but you're a really weird kid.

I don't document this anymore, sorry. But it should be essentially the same as above.

---

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
