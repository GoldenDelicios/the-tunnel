#Add to total time and update personal progress

clear @s #tunnel:collectibles
scoreboard players operation @s TunnelLevel > CurrentLevel Tunnel
scoreboard players operation MaxLevel Tunnel > CurrentLevel Tunnel

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/progress' as: "},{"selector":"@s"}]