#!/bin/bash
set -e

if [[ $TARGET_VERSION -eq 21 ]]; then
    if [[ $BUILD_IOS ]]; then
        git clone --branch jdk-21.0.8+7 --depth 1 https://github.com/openjdk/jdk21u openjdk-21
    else
        # TODO: Update Android to JDK 21.0.8+7
        git clone --branch jdk21.0.1 --depth 1 https://github.com/openjdk/jdk21u openjdk-21
    fi
elif [[ $TARGET_VERSION -eq 17 ]]; then
    git clone --depth 1 https://github.com/openjdk/jdk17u openjdk-17
else
    git clone --branch jdk22.0.1 --depth 1 https://github.com/openjdk/jdk22u openjdk-22
fi
