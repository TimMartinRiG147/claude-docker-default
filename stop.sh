#!/bin/bash

# Capture the current working directory
WORK_DIR="$(pwd)"
export WORK_DIR

(
  cd ~/repos/claude-docker-default

  docker-compose down

  echo ""
  echo "Stopping claude-code-default container..."
  docker-compose ps
)