#!/bin/sh
set -e

FROM="$1"

sed "s|__SOURCE__|$FROM|" < _Containerfile > Containerfile
