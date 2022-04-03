#!/usr/bin/env sh

# author: Mateusz Adamowski <mateusz at adamowski dot pl>

# CUPS

# settings

cups_certdir="/etc/cups/ssl"

########  Public functions #####################

#domain keyfile certfile cafile fullchain
cups_deploy() {

  _cdomain="$1"
  _ckey="$2"
  _ccert="$3"
  _cca="$4"
  _cfullchain="$5"

  _debug _cdomain "$_cdomain"
  _debug _ckey "$_ckey"
  _debug _ccert "$_ccert"
  _debug _cca "$_cca"
  _debug _cfullchain "$_cfullchain"

  cp "$_ckey" "$cups_certdir/$_cdomain.key"
  cp "$_cfullchain" "$cups_certdir/$_cdomain.crt"

}
