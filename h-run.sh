#!/usr/bin/env bash
cd /hive/miners/custom/abelminer
export SSL_NOVERIFY=0
abelminer `cat /hive/miners/custom/abelianminer/abelianminer.conf` 2>&1 | tee --append abelian.log
