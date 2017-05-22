# s3curl-docker
This project is used to build a docker image that will be used to run [s3curl](https://github.com/rtdp/s3curl)

## Getting Started

To build your docker s3curl image clone this repository and modify the s3curl.sample file (put aws credentials in the file).
Once file is modified you can run this command to build your docker image:
(this command should be ran under the repository that you have cloned where the Docker fi)
```
docker image build -t <choose an image name here> .
```


### Prerequisites

You only need to have docker installed localy on your machine.

## Authors

* **Rafik Harzi** - *Initial work* - [7rouz](https://github.com/7rouz)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
