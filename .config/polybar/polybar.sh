#!/usr/bin/env bash
killall -q polybar
polybar top &
polybar bottom &
