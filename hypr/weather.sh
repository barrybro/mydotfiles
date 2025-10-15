#!/bin/sh
#wttrbar --location 'Maple Grove' --fahrenheit --nerd

# Define the location for which to get the weather.
# You can replace "London" with your desired city, e.g., "New York", "Paris", or even a zip code.
LOCATION="Minneapolis"

# Use curl to fetch weather information from wttr.in
# -s: Silent mode (don't show progress or error messages)
# -A "curl": Set User-Agent header to "curl" (optional, but good practice)
WEATHER_INFO=$(curl -s "wttr.in/${LOCATION}?format=%t+%C+%w")

# Extract temperature, condition, and wind from the output
TEMPERATURE=$(echo "$WEATHER_INFO" | awk '{print $1}')
CONDITION=$(echo "$WEATHER_INFO" | awk '{print $2}')
WIND=$(echo "$WEATHER_INFO" | awk '{print $3}')

# Display the weather information
echo "Current weather in ${LOCATION}:"
echo "Temperature: ${TEMPERATURE}"
echo "Condition: ${CONDITION}"
#echo "Wind: ${WIND}"

