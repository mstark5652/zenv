# zenv
Command line application to manage different environment variables for different projects on your system.

## Usage
* `source zenv {environment_name}` will set environment variables for the specified project. For `environment_name` to work, you will need a zsh script setup in the root directory of your env directory. Meaning `$ZENV_ENV_PATH/<environment_name>.zsh` should exist. You can also replace `environment_name` with `.` to use the current directory name.
* `zenv list` will list available environment.

### Example environment file
```zsh
#!/bin/zsh
export NODE_ENV=development;
export PORT=3000;
export KEY_PATH="/keys/public_key.pem";
```

## Install
Run `make install`

## Uninstall
Run `make uninstall`

## Environment Variables
* ZENV_ENV_PATH
    * The path to your environment configuration files.
    * Example: ZENV_ENV_PATH=$HOME/env
I recommend setting this environment variable in your `.zshrc` configuration file.

## License
See LICENSE.md
