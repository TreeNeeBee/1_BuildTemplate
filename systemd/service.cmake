[Unit]
Description=@DaemonDescription@
Before=@DaemonBefore@
After=@DaemonAfter@
Require=@DaemonRequire@

[Service]
Type=notify
ExecStart=@DaemonDestination@/bin/@DaemonService@
ExecReload=/bin/kill -HUP $MAINPID
KillMode=process
WatchdogSec=10
NotifyAccess=main
LimitCORE=infinity
StartLimitInterval=1min
StartLimitBurst=5
Restart=on-failure

[Install]
WantedBy=multi-user.target