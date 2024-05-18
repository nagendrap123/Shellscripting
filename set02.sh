#!/bin/bash

# Enable the "pipefail" option to make pipelines return a non-zero status if any command fails
set -o pipefail

# Perform a pipeline operation
cat  $1 | grep "pattern" | sort

# Check the exit status of the pipeline
if [ $? -ne 0 ]; then
  echo "Pipeline failed"
else
  echo "Pipeline completed successfully"
fi
