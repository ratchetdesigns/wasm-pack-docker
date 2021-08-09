# wasm-pack-docker
Docker container for [wasm-pack](https://rustwasm.github.io/wasm-pack).

# Usage
```
docker run --rm -v "$(pwd):/work" ratchetdesigns/wasm-pack new my-project --mode noinstall
```

You may want to add `-v "path-to-cargo-cache:/usr/local/cargo/registry"`.

We run everything as uid 1000 by default, with a user named wasm-pack.
The user name is used by wasm-pack to infer an author name so you might want to run with `-e "USER=$USER"`.

# Building
1. Update build.sh with the desired node_version and wasm_pack_version.
2. Bump the rust version in Dockerfile if desired.
3. Run ./build.sh
