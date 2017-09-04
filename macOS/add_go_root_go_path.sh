#!/usr/bin/env bash
echo 'export GOPATH=~/go' >> ~/.zshrc
echo 'export GOROOT=/usr/local/opt/go/libexec' >> ~/.zshrc
echo 'PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> ~/.zshrc

