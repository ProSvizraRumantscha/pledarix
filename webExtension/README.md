# Pledarix WebExtension

The pledarix WebExtension uses the [WebExtension Toolbox](https://github.com/webextension-toolbox/webextension-toolbox) to build the extension for different platforms. 

## Development
```shell
$ npm run dev -- --help
$ npm run dev -- firefox
$ npm run dev -- chrome
$ npm run dev -- opera
$ npm run dev -- edge
```

Compiles the extension for development via webpack to `dist/<vendor>`. Watches all extension files and recompiles on demand.

#Build
```shell
$ npm run build -- --help
$ npm run build -- firefox
$ npm run build -- chrome
$ npm run build -- opera
$ npm run build -- edge
```

Compile extension via webpack to `dist/<vendor>`. Packs extension to `packages`.
