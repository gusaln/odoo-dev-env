#!/bin/bash

RUN=`pwd`/run.sh

tmux new -d -sS odoo-dev
tmux neww -d -tS odoo-dev -n docker 'docker compose up'
tmux neww -d -tS odoo-dev -n odoo "sleep 5s && $RUN $@"