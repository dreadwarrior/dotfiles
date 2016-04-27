#!/bin/bash
#
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:
#
# Common functions for modified configuration files listing.

ls_conf_diff::press_any_key() {
  read -n1 -r -p 'Press any key to continue...' key
}

