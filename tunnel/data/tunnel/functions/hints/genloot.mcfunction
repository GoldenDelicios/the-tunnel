#Generate hint loot

execute if score CurrentLevel Tunnel matches 110 at @e[type=ender_dragon,limit=1] run loot spawn ~ ~ ~ loot tunnel:hint_lost
execute if score CurrentLevel Tunnel matches 120..161 at @e[type=ender_dragon,limit=1] run loot spawn ~ ~ ~ loot tunnel:hint_finding
execute if score CurrentLevel Tunnel matches 210..261 at @e[type=ender_dragon,limit=1] run loot spawn ~ ~ ~ loot tunnel:hint_future
execute if score CurrentLevel Tunnel matches 310..351 at @e[type=ender_dragon,limit=1] run loot spawn ~ ~ ~ loot tunnel:hint_prescient
execute if score CurrentLevel Tunnel matches 360..361 at @e[type=ender_dragon,limit=1] run loot spawn ~ ~ ~ loot tunnel:hint_loop
execute if score CurrentLevel Tunnel matches 410 at @e[type=ender_dragon,limit=1] run loot spawn ~ ~ ~ loot tunnel:hint_past

advancement revoke @s only tunnel:hidden/slaydragon

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:hints/genloot' as: "},{"selector":"@s"}]