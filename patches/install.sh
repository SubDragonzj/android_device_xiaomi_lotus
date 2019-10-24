#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/opt/telephony'
    'frameworks/base'
 )

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"
    echo "${RED}Applying ${NC}${repository} ${RED}patches...${NC}"
    git am --keep-cr "${ROOT}/device/xiaomi/lotus/patches/${repository}"/*
    cd "${ROOT}"
done
