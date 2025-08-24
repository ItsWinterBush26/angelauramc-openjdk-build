#!/bin/bash
set -e

if [[ $TARGET_VERSION -eq 21 ]]; then
    if [[ $BUILD_IOS ]]; then
        git clone --branch release --depth 1 https://github.com/adoptium/jdk21u.git openjdk-21
    else
        # TODO: Update Android to JDK 21.0.1+12
        git clone --branch release --depth 1 https://github.com/openjdk/jdk21u openjdk-21
    fi
elif [[ $TARGET_VERSION -eq 17 ]]; then
    git clone --depth 1 https://github.com/openjdk/jdk17u openjdk-17
fi
