FROM msaraiva/elixir-dev
RUN apk --update add postgresql-client && rm -rf /var/cache/apk/*
ADD mix.exs /app/mix.exs
WORKDIR /app
ENV MIX_ENV prod
RUN mix local.hex
RUN mix deps.get
RUN mix compile
ADD . /app
EXPOSE 4000
CMD ["mix", "run", "--no-halt"]
