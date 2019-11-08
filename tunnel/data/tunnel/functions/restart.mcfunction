#Restart tunnel to first level

scoreboard players set CurrentLevel Tunnel 110
scoreboard players set NextLevel Tunnel 110
scoreboard players reset * TunnelOccupant

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:restart' as: "},{"selector":"@s"}]