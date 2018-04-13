#!/usr/bin/env bash

xcrun simctl boot "iPhone8-11.2"
sleep 2
xcrun simctl install "iPhone8-11.2" \
  build/Build/Products/Debug-iphonesimulator/MazeRunner.app

xcrun simctl launch --console booted com.bugsnag.MazeRunner \
    "EVENT_TYPE=$EVENT_TYPE" \
    "EVENT_DELAY=$EVENT_DELAY" \
    "BUGSNAG_API_KEY=$BUGSNAG_API_KEY" \
    "MOCK_API_PATH=http://localhost:$MOCK_API_PORT"
