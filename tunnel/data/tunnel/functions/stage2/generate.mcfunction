#Generate stage 2

#Check for intermission
execute unless score Unlocked Tunnel matches 2.. run function tunnel:intermission/generate

#Play ambient sounds between the present and the future
schedule function tunnel:stage2/ambientdoor 250
schedule function tunnel:stage2/ambientlevel 300

#Barrier to prevent seeing into the past
fill 2830 22 2758 2873 50 2758 minecraft:black_concrete

#Barrier to prevent seeing portion of mancave
fill 2869 22 2759 2873 28 2763 minecraft:black_concrete

#Generate level
execute if score CurrentLevel Tunnel matches 210 run function tunnel:stage2/level1
execute if score CurrentLevel Tunnel matches 220 run function tunnel:stage2/level2
execute if score CurrentLevel Tunnel matches 230 run function tunnel:stage2/level3
execute if score CurrentLevel Tunnel matches 240 run function tunnel:stage2/level4
execute if score CurrentLevel Tunnel matches 250 run function tunnel:stage2/level5
execute if score CurrentLevel Tunnel matches 260 run function tunnel:stage2/level6

execute if score CurrentLevel Tunnel matches 251 run function tunnel:stage2/level5.1


#Move previous future chest to the present
execute if score CurrentLevel Tunnel matches 220.. run data modify block 2859 41 2776 Items set from entity @e[type=chest_minecart,tag=TunnelStorageEntity,limit=1] Items

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage2/generate' as: "},{"selector":"@s"}]