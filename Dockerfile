FROM otel/opentelemetry-collector-contrib:0.69.0

ARG LOG_EXPORTER_LOG_LEVEL="DEBUG"

ARG NEW_RELIC_API_KEY

ARG LOG_EXPORTER_LOG_LEVEL=$LOG_EXPORTER_LOG_LEVEL

ENV NEW_RELIC_API_KEY=$NEW_RELIC_API_KEY

CMD [ "--config=/etc/otel-collector-config.yaml" ]