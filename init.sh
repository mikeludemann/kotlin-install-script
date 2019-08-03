#!/bin/bash

echo "Checking kotlin"

if curl --version > /dev/null; then
  echo "curl is already installed."
  if sdk v > /dev/null; then
    echo "sdkman is already installed."
  else
    echo "installing sdkman"
    curl -s https://get.sdkman.io | bash
    echo "Init sdkman"
    if [ "$1" != "" ]; then
      echo "The Path to the user is available"
      source "$HOME/.sdkman/bin/sdkman-init.sh"
      if kotlinc -version > /dev/null; then
        echo "kotlin is already installed."
      else
        echo "installing kotlin"
        sdk install kotlin
    else
      echo "The Path to the user is not available"
      echo "Please retry with the correct parameter"
    fi
  if
else
  echo "curl is not installed"
  if apt-get -v > /dev/null; then
    echo "installing curl"
    sudo apt-get install curl
    if sdk v > /dev/null; then
      echo "sdkman is already installed."
    else
      echo "installing sdkman"
      curl -s https://get.sdkman.io | bash
      echo "Init sdkman"
      if [ "$1" != "" ]; then
        echo "The Path to the user is available"
        source "$HOME/.sdkman/bin/sdkman-init.sh"
        if kotlinc -version > /dev/null; then
          echo "kotlin is already installed."
        else
          echo "installing kotlin"
          sdk install kotlin
      else
        echo "The Path to the user is not available"
        echo "Please retry with the correct parameter"
      fi
    if
  else
    echo "apt-get is not installed"
  fi
fi
