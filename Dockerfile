FROM alpine:edge AS src
WORKDIR /gh
ARG RATBOT_SRC_COMMIT
RUN apk add --no-cache git \
    && git clone https://github.com/mlsa-dev/ratBot ./ \
    && git checkout "$RATBOT_SRC_COMMIT"

FROM python:3.8.13-alpine
WORKDIR /app

COPY ./entrypoint.bash ./
RUN chown "$(id -nu)" ./entrypoint.bash && \
    chmod u=rx ./entrypoint.bash

COPY --from=src /gh/requirements.txt ./
COPY --from=src /gh/src ./src

RUN pip3 install -r requirements.txt

RUN apk add --no-cache \
      tzdata \
      bash

ENTRYPOINT [ "/bin/bash", "-c", "./entrypoint.bash" ]
