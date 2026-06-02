#!/bin/bash -e

error=0
if [[ -z "$MODEL" ]]; then
    echo "Missing MODEL"
    error=1
fi
if [[ -z "$HF_TOKEN" ]]; then
    echo "Missing HF_TOKEN"
    error=1
fi
if [[ -z "$LLAMA_ARGS" ]]; then
    echo "Missing LLAMA_ARGS"
    error=1
fi
ldconfig -p | grep llama || error=1

if [[ 1 -eq $error ]]; then
    echo "ERRORS, exiting"
    exit 1
fi

/usr/local/bin/llama-server \
    $LLAMA_ARGS \
    -hf $MODEL
exit 0
