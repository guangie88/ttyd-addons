# `ttyd-addons`

[![Build Status](https://travis-ci.org/guangie88/ttyd-addons.svg?branch=master)](https://travis-ci.org/guangie88/ttyd-addons)

Dockerfile set-up to enhance `ttyd` with useful installed applications. This is
mostly useful only in environments where the filesystem on Docker container is
readonly, or if user cannot be `root`.

Currently the following CLI commands are preinstalled:

- `curl`
- `wget`
- `python3`
- `ruby` (`irb`)
- `vim`

## Changelog

See [here](CHANGELOG.md).

## How to build

### Ubuntu

```bash
docker build -t ubuntu \
    --build-arg "DOCKER_TAG=1.5.2" \
    ubuntu/
```

### Alpine

```bash
docker build -t alpine \
    --build-arg "DOCKER_TAG=1.5.2-alpine" \
    alpine/
```

## How to generate `.travis.yml` from template

For Linux user, you can download Tera CLI v0.2 at
<https://github.com/guangie88/tera-cli/releases> and place it in `PATH`.

Otherwise, you will need `cargo`, which can be installed via
[rustup](https://rustup.rs/).

Once `cargo` is installed, simply run `cargo install tera-cli --version=^0.2.0`.

## Acknowledgement

Thanks to the original author of [`ttyd`](https://github.com/tsl0922/ttyd) for
making such a great application!
