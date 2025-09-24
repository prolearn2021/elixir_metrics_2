FROM elixir:1.16.3-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential git inotify-tools curl ca-certificates nodejs npm \
 && rm -rf /var/lib/apt/lists/*
RUN mix local.hex --force && mix local.rebar --force && mix archive.install hex phx_new --force
WORKDIR /app
