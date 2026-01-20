#!/bin/bash

(
  cd ~/repos/claude-docker-default

  docker-compose up -d

  docker-compose ps

  echo ""
  echo "Entering claude-code container..."
  docker-compose exec claude-code bash
)