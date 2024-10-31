#!/bin/bash

# Get the project path, token, and dry-run flag from the arguments
PROJECT_PATH=$1
TOKEN=$2
DRY_RUN=$3

# Output the current action to the console
echo "::debug::Starting the cargo publish process at path: $PROJECT_PATH"

# Navigate to the specified project path
cd "$PROJECT_PATH" || exit 1

# Check if dry-run is enabled and run the appropriate cargo publish command
if [ "$DRY_RUN" = "true" ]; then
    cargo publish --dry-run --token "$TOKEN"
else
    cargo publish --token "$TOKEN"
fi

# Output the result
if [ $? -eq 0 ]; then
    echo "::notice::Cargo publish completed successfully."
else
    echo "::error::Cargo publish failed."
    exit 1
fi
