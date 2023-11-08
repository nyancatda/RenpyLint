#!/bin/sh
sdk_version=$1
project_path=$2
target_platform=$3

sdk_name="renpy-${sdk_version}-sdk"
sdk_path="../${sdk_name}"

if [ ! -d "../$sdk_name" ]; then
    # Download SDK
    echo "Download SDK..."
    if wget -q https://www.renpy.org/dl/${sdk_version}/${sdk_name}.tar.bz2; then
        echo "SDK downloaded successfully."
    else
        echo "SDK download failed."
        return 1
    fi
    
    # Unzip SDK
    echo "Unzip SDK..."
    tar -xjf ./${sdk_name}.tar.bz2
    mv ./${sdk_name} ${sdk_path}
    rm ./${sdk_name}.tar.bz2
else
    echo "SDK already exists."
fi

# Lint
echo "Lint project..."
${sdk_path}/renpy.sh ${project_path} lint