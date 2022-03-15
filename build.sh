#!/bin/bash

node_version='14.19.0-r0'
npm_version='7.17.0-r0'
wasm_pack_version='0.10.2'
docker build . --build-arg "NODE_VERSION=${node_version}" --build-arg "NPM_VERSION=${npm_version}" --build-arg "WASM_PACK_VERSION=${wasm_pack_version}" -t "ratchetdesigns/wasm-pack:${wasm_pack_version}"
