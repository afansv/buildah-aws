# buildah-aws
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=flat&logo=docker&logoColor=white)
](https://hub.docker.com/r/afansv/buildah-aws)

This repository provides a Docker image based on `quay.io/buildah/stable` with AWS CLI pre-installed. This image can be used to run `buildah` and `awscli` commands in a containerized environment.

## Features

- **Base Image**: `quay.io/buildah/stable`
- **Pre-installed Tools**:
    - `buildah`
    - `awscli`

## Pull
```sh
docker pull afansv/buildah-aws
```

## How to Use

You can use this Docker image to run `buildah` and `awscli` commands. Below are some examples of how to use the image:

### Running `buildah`

```sh
docker run --rm -it afansv/buildah-aws buildah --version
```

This command will run the `buildah` command and display its version.

### Running `awscli`

```sh
docker run --rm -it afansv/buildah-aws aws --version
```

This command will run the `awscli` command and display its version.

### Running a Custom Command

To run a custom command, simply specify it at the end of the `docker run` command:

```sh
docker run --rm -it afansv/buildah-aws <your-command-here>
```

For example, to list S3 buckets using `awscli`:

```sh
docker run --rm -it afansv/buildah-aws aws s3 ls
```

## Cleaning Up

To remove the Docker image, you can use the following command:

```sh
docker rmi afansv/buildah-aws
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss what you would like to change.

## Author

Pavel Afanasev
