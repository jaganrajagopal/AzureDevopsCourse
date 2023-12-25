#!/bin/bash

# Script to increase CPU utilization

# Number of cores to stress
NUM_CORES=$(nproc)

# Duration for the stress (in seconds)
DURATION=60

echo "Creating CPU load on $NUM_CORES cores for $DURATION seconds."

# Using shell's built-in for heavy computation
for i in $(seq 1 $NUM_CORES); do
    # Infinite loop running in the background
    yes > /dev/null &
done

# Sleep for specified duration
sleep $DURATION

# Kill the background processes to stop the stress
killall yes

echo "CPU load test completed."
