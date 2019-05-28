# Pledarix WebExtension

The pledarix WebExtension uses the [WebExtension Toolbox](https://github.com/webextension-toolbox/webextension-toolbox) to build the extension for different platforms. 

## Development
```shell
$ webextension-toolbox dev --help
$ webextension-toolbox dev firefox
$ webextension-toolbox dev chrome
$ webextension-toolbox dev opera
$ webextension-toolbox dev edge
```

Compiles the extension for development via webpack to `dist/<vendor>`. Watches all extension files and recompiles on demand.

#Build
```shell
$ webextension-toolbox build --help
$ webextension-toolbox build firefox
$ webextension-toolbox build chrome
$ webextension-toolbox build opera
$ webextension-toolbox build edge
```

Compile extension via webpack to `dist/<vendor>`. Packs extension to `packages`.
