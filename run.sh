#!/bin/bash

ODOO_SRC="/tmp"
ODOO_BIN="$ODOO_SRC/odoo-bin --config ./config/odoo.cfg"

$ODOO_BIN $@