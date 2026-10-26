#!/bin/bash
cd "$(dirname "$0")" || exit 1
export GOOGLE_DEFAULT_CLIENT_ID=77185425430.apps.googleusercontent.com
export GOOGLE_DEFAULT_CLIENT_SECRET=OTJgUOQcT7lO7GsGZq2G4IlT
exec ./chrome --use-system-clipboard --login-manager "$@"
