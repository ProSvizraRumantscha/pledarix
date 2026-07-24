# Pledarix WebExtension

The pledarix WebExtension uses [WXT](https://wxt.dev) to build the extension for different platforms.

## Development
```shell
$ pnpm dev:chrome
$ pnpm dev:firefox
$ pnpm dev:edge
$ pnpm dev:opera
```

Compiles the extension for development via Vite to `.output/<browser>-mv3`. Watches all extension files and reloads on demand.

## Build
```shell
$ pnpm build:chrome
$ pnpm build:firefox
$ pnpm build:edge
$ pnpm build:opera
```

Compiles the extension to `.output/<browser>-mv3`.

## Package
```shell
$ pnpm zip:chrome
$ pnpm zip:firefox
$ pnpm zip:edge
$ pnpm zip:opera
```

Builds and packs the extension into a zip file under `.output`.
