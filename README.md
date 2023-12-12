# To-Do list automated script
    # Install Python3 >> https://www.python.org/downloads/
    # Install Robot Framework and SeleniumLibrary
        - pip3 install robotframework robotframework-seleniumlibrary

## Install Brew 
    Go to  https://brew.sh/
    - Run this command in your terminal 
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Install Chromewebdriver via brew
    brew install chromewebdriver

# Docker image run
    - build Docker image `docker build -t test_todo_list .`
    - Docker run `docker run test_todo_list`