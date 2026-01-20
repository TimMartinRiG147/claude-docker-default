#!/bin/bash

(
  cd ~/repos/claude-docker-default

  docker-compose down

  echo ""
  echo "Stopping claude-code container..."
  docker-compose ps
)