Initial score: 5.8 medium
screenshots-week3/KKPaymentsHardening/kk-InitialState.png
screenshots-week3/KKPaymentsHardening/kk-InitialState2.png

Added
NoNewPrivilidges=true
ProtectSystem=full
1st score: 5.4 medium
Added
ProtectSystem=strict
ProtectControlGroups=true
ProtectKernelModules=true
ProtectKernelTunables=true
RestrictAddressFamilies=AF_INET AF_UNIX
RestrictNamespaces=true
LockPersonality=true
MemoryDenyWriteExecute=true

2nd Score: 4.1 ok
...
Final: 4.1

Service failed after ProtectSystem=strict due to restricted file access.  
Resolved by adding ReadWritePaths to allow required directory access.  
Service started successfully after adjustment.
