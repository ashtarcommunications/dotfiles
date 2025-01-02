#!/bin/bash

# Check if at least one parameter is provided
if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <path-to-executable> [delay-in-ms] [-- <arguments-to-executable>]"
  exit 1
fi

EXECUTABLE="$1"

# Default delay (3 hours = 10800000 ms)
DELAY_MS=10800000

# Check if the second parameter is a valid delay
if [[ $# -ge 2 && "$2" =~ ^[0-9]+$ ]]; then
  DELAY_MS="$2"
  shift 2 # Shift past the executable and delay
else
  shift 1 # Shift past the executable only
fi

# Remaining parameters are for the executable
EXECUTABLE_ARGS=("$@")

# Ensure the executable exists and is executable
if [[ ! -x "$EXECUTABLE" ]]; then
  echo "Error: $EXECUTABLE is not a valid executable file."
  exit 1
fi

# Directory for storing invocation timestamps
CACHE_DIR="$HOME/.cache/banme"
mkdir -p "$CACHE_DIR"

# Create a unique file for this executable
CACHE_FILE="$CACHE_DIR/$(basename "$EXECUTABLE").last_run"

# Get the current timestamp in milliseconds
CURRENT_TIME_MS=$(($(date +%s%3N)))

# Check if the executable has a previous run timestamp
if [[ -f "$CACHE_FILE" ]]; then
  LAST_RUN_MS=$(cat "$CACHE_FILE")
  # Calculate time difference in milliseconds
  TIME_DIFF_MS=$((CURRENT_TIME_MS - LAST_RUN_MS))

  # If less than the specified delay, show a warning
  if ((TIME_DIFF_MS < DELAY_MS)); then
    zenity --warning --text="The program $EXECUTABLE was last run less than $((DELAY_MS / 1000 / 60)) minutes ago. Please wait before running it again."
    exit 0
  fi
fi

# Update the last run timestamp
echo "$CURRENT_TIME_MS" > "$CACHE_FILE"

# Start the executable
"$EXECUTABLE" "${EXECUTABLE_ARGS[@]}" &

