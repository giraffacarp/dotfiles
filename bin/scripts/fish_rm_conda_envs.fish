#!/usr/bin/env fish

# List all environments except base
for env in (conda info --envs | grep -v '^#' | grep -v '^base' | cut -d' ' -f1)
  # Remove each environment
  conda remove -n $env --all --yes
end
