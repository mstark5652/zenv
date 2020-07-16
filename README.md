## zenv
Command line application to manage different environment variables for different projects on your system.

### Usage
* `source zenv {project_name}` will set environment variables for the specified project.
* `zenv list` will list available projects.


### Install
Run `make install`

### Uninstall
Run `make uninstall`

### Environment Variables
* ZENV_ENV_PATH
    * The path to your environment configuration files.
    * Example: ZENV_ENV_PATH=$HOME/env
I recommend setting this environment variable in your `.zshrc` configuration file.

### License
See LICENSE.md
