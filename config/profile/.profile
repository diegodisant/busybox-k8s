#!/bin/sh

source '/busyboxk8s/src/command/k8s.sh'

echo ""
echo " _                         _                  "
echo "| |                       | |                 "
echo "| |__   _   _  ___  _   _ | |__    ___  __  __"
echo "| '_ \\ | | | |/ __|| | | || '_ \\  / _ \\ \\ \\/ /"
echo "| |_) || |_| |\\__ \\| |_| || |_) || (_) | >  < "
echo "|_.__/  \\__,_||___/ \\__, ||_.__/  \\___/ /_/\\_\\"
echo "                     __/ |                    "
echo "                    |___/                     "
echo "              _     _____                     "
echo "             | |   |  _  |                    "
echo "             | | __ \\ V /  ___                "
echo "             | |/ / / _ \\ / __|               "
echo "             |   < | |_| |\\__ \\               "
echo "             |_|\\__\\\\_____/|___/               "
echo ""

print_info 'busybox k8s (kubernetes) for alpine linux'
print_info 'default shell: sh'
print_info "default environment @at ${BUSYBOX_HOME}"
print_info 'written by @diegodisant'
