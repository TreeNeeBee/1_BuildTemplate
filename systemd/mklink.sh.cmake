#! /bin/bash

cd ${TARGET_OUTPUT_DIR}/${TARGET_PRJ}/TARGET/${TARGET_SUPPLIER}/etc/systemd/system/multi-user.target.wants
rm -f @DaemonService@.service
ln -s ../../../../lib/systemd/system/@DaemonService@.service @DaemonService@.service