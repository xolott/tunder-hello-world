FROM dart:2.17.6-sdk as build-stage

WORKDIR /app
COPY . .

RUN dart pub get \
  && dart compile kernel bin/main.dart -o tunder.dill

FROM dart:2.17.6-sdk as runtime-stage

WORKDIR /app

COPY pubspec.* ./
COPY --from=build-stage /app/tunder.dill /app/tunder.dill

RUN dart pub get

CMD dart run tunder.dill


