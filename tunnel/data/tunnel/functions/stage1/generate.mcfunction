#Generate stage 1

#Play ambient sound behind the door to the future
schedule function tunnel:stage1/ambientdoor 10
schedule function tunnel:stage1/ambientlevel 200

#ambient smoke
schedule function tunnel:stage1/smokegap 20

#Barrier to prevent seeing into the past
fill 2830 22 2758 2873 50 2758 minecraft:black_concrete

#Barrier to prevent seeing portion of mancave
fill 2869 22 2759 2873 28 2763 minecraft:black_concrete

#Generate level
execute if score CurrentLevel Tunnel matches 110 run function tunnel:stage1/level1
execute if score CurrentLevel Tunnel matches 120 run function tunnel:stage1/level2
execute if score CurrentLevel Tunnel matches 130..131 run function tunnel:stage1/level3
execute if score CurrentLevel Tunnel matches 140 run function tunnel:stage1/level4
execute if score CurrentLevel Tunnel matches 150 run function tunnel:stage1/level5
execute if score CurrentLevel Tunnel matches 160 run function tunnel:stage1/level6

execute if score CurrentLevel Tunnel matches 141 run function tunnel:stage1/level4.1
execute if score CurrentLevel Tunnel matches 151 run function tunnel:stage1/level5.1
execute if score CurrentLevel Tunnel matches 161 run function tunnel:stage1/level6.1

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/generate' as: "},{"selector":"@s"}]