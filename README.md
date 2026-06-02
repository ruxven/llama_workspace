# llama-server

## What is this?

A custom build environment and docker image for llama.cpp

## How do I use it?

1. `./rc.build_dev_container`
1. `./rc.build_llama`
  1. This builds the llama.cpp software using script `./scripts/build_llama` inside the dev container.
  1. This also performs a make install that is then targz'd into and archive for the runtime build
1. `./rc.build_run_container`
  1. This builds the runtime container
1. `./rc.prep`
  1. This will ask for things like:
    1. HuggingFace API key
    1. Model to run
    1. Flags to pass to llama-server (or a file with the arguments, see `llama_args.demo`)
    1. Output recorded in `.env`
1. `podman compose up`
1. Smoke check with `rc.check_llama_server`



