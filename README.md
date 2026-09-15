<p align="center">
    <img src="frigate-compose.png" alt="Frigate Compose" width="40%">
</p>

<p align="center">
    <a href="https://github.com/users/PHLAK/sponsorship"><img src="https://img.shields.io/badge/Become_a-Sponsor-cc4195.svg?style=for-the-badge" alt="Become a Sponsor"></a>
    <a href="https://paypal.me/ChrisKankiewicz"><img src="https://img.shields.io/badge/Make_a-Donation-006bb6.svg?style=for-the-badge" alt="One-time Donation"></a>
</p>

---

Requirements
------------

  - [Docker](https://www.docker.com)
    - [Docker Compose](https://docs.docker.com/compose/)
  - [GNU Make](https://www.gnu.org/software/make/) (optional)

Installation
------------

  1. Clone the repository

         git clone https://github.com/PHLAK/frigate-compose.git

  2. Initialize the configuration files

         make init

  3. Set the environment variables in `.env`

  4. Set service-specific environment variables by editing the files found in the `environment.d` directory (optional)

  5. Modify the `config/config.yaml` file with your configuration options

  6. Run `docker compose config` to validate and confirm your configuration

  7. Run `docker compose up -d` to start the containers

Configuration
-------------

### Frigate

Frigate configuration is controlled through the `config.yaml` file. By default
this file is mounted to `config/config.yaml` in your project directory. You may
reference the official [Frigate Configuration](https://docs.frigate.video/configuration/)
documentation for more info.

> [!NOTE]
> After editing the `config/config.yaml` the `frigate` container must be
> restarted (e.g. `docker compose up -d`) for changes to apply.

### Additional Configuration

Additional configuration can be achieved by defining environment variables in
the `environment.d/*.env` files. Reference the documentation for the individual
apps for available environment variables and their purpose.

> [!IMPORTANT]
> After modifying files in `environment.d` you must restart your containers
> (i.e. `docker compose up -d`) for the changes to apply.

Updating
--------

  1. Fetch latest file changes from the repository

         git pull --ff-only

  2. If necessary, initialize new configuration files

         make init

  3. Pull new images and restart containers

         docker compose pull
         docker compose up -d
