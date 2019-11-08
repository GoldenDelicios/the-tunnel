#Set tunnel to final level

execute unless score CurrentLevel Tunnel matches 500 run function tunnel:exit/kickall
scoreboard players set CurrentLevel Tunnel 500
scoreboard players set NextLevel Tunnel 500

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:complete' as: "},{"selector":"@s"}]