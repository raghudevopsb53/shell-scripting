#!/bin/bash

INFO() {
  echo -e "[\e[1;34mINFO\e[0m] [\e[1;35mfrontend\e[0m] [\e[1;36m$(date '+%F %T')\e[0m]"
}

INFO "Setup Frontend Component"
echo -e "[\e[1;34mINFO\e[0m] [\e[1;35mfrontend\e[0m] [\e[1;36m$(date '+%F %T')\e[0m] Installing Nginx"
echo -e "[\e[1;32mSUCC\e[0m] [\e[1;35mfrontend\e[0m] [\e[1;36m$(date '+%F %T')\e[0m] Installed Nginx"
echo -e "[\e[1;31mFAIL\e[0m] [\e[1;35mfrontend\e[0m] [\e[1;36m$(date '+%F %T')\e[0m] Installed Nginx"