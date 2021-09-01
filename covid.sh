#!/bin/bash
# This script downloads covid data and displays it


DATA=$(curl https://api.covidtracking.com/v1/us/current.json)
POSITIVE=$(echo $DATA |jq '.[0].positive')
HOSPITALIZED=$(echo $DATA | jq '.[0].hospitalizedCurrently')
DEATH=$(echo $DATA | jq '.[0].deathIncrease')
CASES=$(echo $DATA | jq '.[0].positiveIncrease')
TODAY=$(date)

echo "On $TODAY, there is a total of $POSITIVE positive COVID cases, $HOSPITALIZED currently hospitialized, $DEATH new deaths, and $CASES new cases"
