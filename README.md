# Docker image for JSHint checker

[JSHint](http://jshint.com/) is a community-driven tool to detect errors and potential problems in JavaScript code

## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.jshint/blob/master/Dockerfile)
- [`2.10.2` (*Dockerfile*)](https://github.com/eea/eea.docker.jshint/blob/2.10.2/Dockerfile)

## Usage

    $ docker run -it --rm -v /path/to/javascript/code:/code eeacms/jshint

or

    $ docker run --rm eeacms/jshint https://github.com/eea/eea.alchemy.git

## Running in jenkins, including pull requests:

* GIT_NAME, GIT_SRC  - must be given
* GIT_BRANCH - defaults to master
* GIT_CHANGE_ID - can be empty or pull request id

    $ docker run -i --rm -e GIT_SRC="https://github.com/eea/$GIT_NAME.git" -e GIT_NAME="$GIT_NAME" -e GIT_BRANCH="$BRANCH_NAME" -e GIT_CHANGE_ID="$CHANGE_ID" eeacms/jshint

## Advanced usage

Exclude directories:


    $ docker run --rm -e GIT_SRC="https://github.com/eea/eea.alchemy.git" \
             eeacms/jshint --exclude **/_static /code


See `--help` for more options:


    $ docker run --rm eeacms/jshint --help



