#!/usr/bin/env bash

HOST="$(docker inspect rcssserver3d | grep "IPAddress")"

echo $HOST