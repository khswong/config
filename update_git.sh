#!/bin/bash

while read repo; do
    git pull $repo
done <repo.txt
