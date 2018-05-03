#!/usr/bin/env bash

echo 'hi!' > /tmp/foobarbaz
echo "$SCAP_REV_PATH" >> /tmp/foobarbaz
echo "$SCAP_FINAL_PATH" >> /tmp/foobarbaz
