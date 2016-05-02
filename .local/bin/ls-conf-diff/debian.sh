#!/usr/bin/env bash
#
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:
#
# Entry point for listing modified configuration files on Debian systems.
#
# @see http://serverfault.com/a/90401

ls_conf_diff::debian::dpkg_query() {
  echo 'Showing modified configuration files using dpkg-query...'
  ls_conf_diff::press_any_key

  dpkg-query -W -f='${Conffiles}\n' '*' | awk 'OFS="  "{print $2,$1}' | LANG=C md5sum -c 2>/dev/null | awk -F': ' '$2 !~ /OK$/{print $1}' | sort | less
}

ls_conf_diff::debian::debsums() {
  echo 'Showing modified configuration files using debsums...'
  ls_conf_diff::press_any_key

  debsums -ce
}

ls_conf_diff::debian() {
  local isDebsumsInstalled=`$(which debsums)`

  if [[ -z "${isDebsumsInstalled}" ]]; then
    ls_conf_diff::debian::dpkg_query "$@"
  else
    ls_conf_diff::debian::debsums "$@"
  fi
}

