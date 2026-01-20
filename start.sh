#!/bin/bash

# Capture the current working directory
WORK_DIR="$(pwd)"
export WORK_DIR

(
  cd ~/repos/claude-docker-default

  docker-compose up -d

  docker-compose ps

  echo ""
  echo "Mounting: $WORK_DIR -> /workspace"
  echo "Entering claude-code-default container..."
  docker-compose exec claude-code-default bash
)