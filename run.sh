#!/usr/bin/env bash
# Launch Forge from the source tree. Works from any working directory.
set -e
FORGE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$FORGE_ROOT/forge-gui"
exec java -Xmx4g \
    -Dio.netty.tryReflectionSetAccessible=true \
    -Dfile.encoding=UTF-8 \
    -jar "../forge-gui-desktop/target/forge-gui-desktop-2.0.12-SNAPSHOT-jar-with-dependencies.jar" \
    "$@"
