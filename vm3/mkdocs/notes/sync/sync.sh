#!/bin/bash

while :; do
        nextcloudcmd \
                -u $NC_USER -p $NC_PASSWORD \
                --path /Notes \
                --non-interactive -h -s \
                ./docs $NC_DOMAIN

        echo -e "[$(date +%T)] Finished Syncing\n\texit code: $?\n"
        sleep 60
done
