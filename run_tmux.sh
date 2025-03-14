#!/bin/bash

ODOO_BIN='./src/odoo-bin --config ./config/odoo.cfg'

tmux new -d -s odoo-dev
tmux neww -dS -t odoo-dev -n docker 'docker compose up'
tmux neww -dS -t odoo-dev -n odoo "sleep 5s && $ODOO_BIN $@"