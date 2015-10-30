#!/bin/bash

if [ ! -f /wiki/tiddlywiki.info ]; then
    tiddlywiki wiki --init server
fi
tiddlywiki wiki --server 8080 $:/core/save/all text/plain text/html $USERNAME $PASSWORD 0.0.0.0

