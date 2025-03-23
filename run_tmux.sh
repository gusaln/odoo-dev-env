#!/bin/bash

RUN=`pwd`/run.sh

tmux new -d -s odoo-dev
tmux neww -d -St odoo-dev -n docker 'docker compose up'
tmux neww -d -St odoo-dev -n odoo "sleep 5s && $RUN $@"
tmux a
