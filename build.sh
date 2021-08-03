#!/bin/bash

node_version='14.17.4-r0'
wasm_pack_version='0.10.0'
docker build . --build-arg "NODE_VERSION=${node_version}" --build-arg "WASM_PACK_VERSION=${wasm_pack_version}" -t "ratchetdesigns/wasm-pack:${wasm_pack_version}"
