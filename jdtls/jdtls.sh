#!/bin/bash

JAR="$HOME/.cache/nvim/lspconfig/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"
GRADLE_HOME=$HOME/gradle $JAVA_HOME/bin/java \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Dlog.protocol=true \
  -Dlog.level=ALL \
  -Xms1g \
  -Xmx2G \
  -jar $(echo "$JAR") \
  -configuration "$HOME/.cache/nvim/lspconfig/jdtls/config_linux" \
  -data "$HOME/workspace"
