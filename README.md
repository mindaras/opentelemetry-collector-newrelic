# opentelemetry-collector-newrelic

Open Telemetry collector with New Relic integration.

## Development:

Start the service:

Start:
`docker-compose up`

Stop:
`docker-compose down`

## Production

Build:

You'll have to replace `$NEW_RELIC_API_KEY` build arg with an actual value and you can optionally pass `LOG_EXPORTER_LOG_LEVEL`.

```
docker build --build-arg="NEW_RELIC_API_KEY=$NEW_RELIC_API_KEY" -t otel-collector .
```

Start:

```
docker run --restart unless-stopped -v $(pwd)/otel-collector-config.yaml:/etc/otel-collector-config.yaml -p 1888:1888 -p 8888:8888 -p 8889:8889 -p 13133:13133 -p 4317:4317 -p 4318:4318 -p 55679:55679 --name otel-collector otel-collector
```
