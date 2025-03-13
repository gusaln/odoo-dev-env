# odoo development environment

This is skeleton repository to streamline the development of odoo modules.

It provides a [docker-compose](docker-compose.yaml) file for the database and mailpit

## Usage

1. Clone this repository

2. Clone the odoo repository

    The following command will clone only the last commit of the repo to save some disk space

    ```sh
    git clone --branch 17.0 --depth 1 git@github.com:odoo/odoo.git src
    ```

    If you clone the repository to a different file, change the paths in `./config/odoo.cfg`.

3. (optional) Clone the odoo enterprise repository to `enterprise` and uncomment the corresponding line in `./config/odoo.cfg`.

## Add custom modules

1. Clone the repository to the `./addons` folder
2. Modify the `./config/odoo.cfg` file to include the addons repository

    From this

    ```conf
    addons_path = ./src/addons
    #addons_path = ./src/addons,./enterprise
    ```

    to this

    ```conf
    addons_path = ./src/addons,./addons
    #addons_path = ./src/addons,./enterprise,./addons
    ```

    It is important that you do not remove the `./src/addons` directory from the configuration
