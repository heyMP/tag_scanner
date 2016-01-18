#!/bin/bash

git filter-branch --commit-filter '
        if [ "$GIT_AUTHOR_EMAIL" = "mgp40@gmail.com" ];
        then
                GIT_AUTHOR_NAME="heyMP";
                GIT_AUTHOR_EMAIL="mgp140@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD