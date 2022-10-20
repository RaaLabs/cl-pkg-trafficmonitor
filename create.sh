#!/bin/bash

if [ -z "$1" ]; then
    echo "error: No version arg supplied as first argument"
    exit 1
fi

# version=$1
name=trafficmonitor
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
echo "$SCRIPT_DIR"

wget https://github.com/RaaLabs/trafficmonitor/releases/download/v0.3.2/trafficmonitor -P "$SCRIPT_DIR"

mkdir -p "$SCRIPT_DIR"/binaries
cp -a "$SCRIPT_DIR"/"$name" "$SCRIPT_DIR"/binaries

## If need to unpack and rename the unpacked binary.
# tar xzvf "$SCRIPT_DIR"/$name-"$version".linux-amd64.tar.gz -C "$SCRIPT_DIR"
# cp -a "$SCRIPT_DIR"/$name-"$version".linux-amd64/node_exporter "$SCRIPT_DIR"/binaries
