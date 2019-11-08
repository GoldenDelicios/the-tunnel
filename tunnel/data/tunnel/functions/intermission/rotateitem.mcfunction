#Kick all players, restart tunnel to first level, reset item frame
data merge entity @s {ItemRotation:0b}
function tunnel:exit/kickall
scoreboard players set CurrentLevel Tunnel 110
scoreboard players set NextLevel Tunnel 110

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:intermission/rotateitem' as: "},{"selector":"@s"}]
