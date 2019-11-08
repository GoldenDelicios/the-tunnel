#Evaluate level

#Stage 2: Get future chest contents
execute unless entity @e[type=chest_minecart,tag=TunnelStorageEntity] run summon minecraft:chest_minecart 2830 21 2738 {Tags:["TunnelStorageEntity"]}
execute if score CurrentLevel Tunnel matches 210..261 run data modify entity @e[type=chest_minecart,tag=TunnelStorageEntity,limit=1] Items set from block 2850 41 2773 Items

#Update global level
scoreboard players operation CurrentLevel Tunnel = NextLevel Tunnel

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/evaluate' as: "},{"selector":"@s"}]
