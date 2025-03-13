#!/bin/bash

ODOO_BIN='./src/odoo-bin --config ./config/odoo.cfg'

tmux new -d -s odoo-dev
tmux neww -d -t odoo-dev -n docker 'docker compose up'
tmux neww -d -t odoo-dev -n odoo "sleep 5s && $ODOO_BIN $@"