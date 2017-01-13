## Seakayak Django example

This repository contains a simple Django web app that can be deployed to [seakayak.io](https://seakayak.io/).

### Prerequisites
- A seakayak.io account ([sign up here](https://seakayak.io/signup))
- A working Docker client (see instructions for [mac](https://docs.docker.com/engine/installation/mac/), [linux](https://docs.docker.com/engine/installation/linux/), [windows](https://docs.docker.com/engine/installation/windows/))

### Quickstart

In the following, replacing `USERNAME` with your seakayak username.

```shell
# log into seakayak (one time only)
docker login seakayak.io

# clone the repository
git clone github.com/seakayak/example-django-poll
cd example-django-poll

# build the docker image
docker build -t seakayak.io/USERNAME/example-django-poll . 

# deploy your app
docker push seakayak.io/USERNAME/example-django-poll
```

Your app is now live. To see it, go to https://golang-exampe.USERNAME.seakayak.io/.

To deploy a new version of your app, repeat the last three steps above.

To see logs, go to https://admin.golang-exampe.USERNAME.seakayak.io/.

Next: explore the [documentation](https://seakayak.io/learn).
