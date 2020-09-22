#!/usr/bin/env bash
# Original authori is Tobias Stancel (tobias.stancel@spaceflow.io)

echo $1 | sed -nr 's/(.{8})(.{4})(.{4})(.{4})(.{12})/\1-\2-\3-\4-\5/p' | tr '[:upper:]' '[:lower:]'
