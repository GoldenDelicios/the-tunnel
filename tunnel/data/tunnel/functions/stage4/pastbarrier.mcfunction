#Past barrier
execute in minecraft:the_end positioned 2859 34 2762 unless entity @a[dz=0,y_rotation=45..-45] run fill 2859 33 2762 2859 34 2762 minecraft:air
execute in minecraft:the_end positioned 2859 34 2762 if entity @a[dz=0,y_rotation=45..-45] run fill 2859 33 2762 2859 34 2762 minecraft:barrier

execute if score CurrentLevel Tunnel matches 410 run schedule function tunnel:stage4/pastbarrier 1

#Verbosity
tellraw @a[tag=TunnelDebug] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/pastbarrier' as: "},{"selector":"@s"}]