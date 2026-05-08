#!/usr/bin/env bash

# oo sick looking art

cat << EOF
   _             _       _          
  /_\  _ __  ___| |_ _ _(_)_ _  ___ 


 / _ \| '  \/ -_)  _| '_| | ' \/ -_)
/_/ \_\_|_|_\___|\__|_| |_|_||_\___|
                                    
EOF

# Load .env, it's annoying to do by hand
# What's more annoying is getting shouted at when you don't have .env,so load it conditionally

if [ -f .env ]; then
  echo -e "Found .env\nsourcing it..."
  set -a && source .env && set +a
fi


# Zola + pipe in all args
zola "$@"