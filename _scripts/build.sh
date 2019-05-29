#!/bin/bash
bundle update
git submodule update --recursive --remote
bundle exec jekyll build --config _config.yml
