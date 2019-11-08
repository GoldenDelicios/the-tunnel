#Generate stage 3

#Check for intermission
execute unless score Unlocked Tunnel matches 3.. run function tunnel:intermission/generate

#Play ambient sounds between the present and the future
execute if score CurrentLevel Tunnel matches 310..350 run schedule function tunnel:stage3/ambientdoor 275
execute if score CurrentLevel Tunnel matches 310..350 run schedule function tunnel:stage3/ambientlevel 300
execute if score CurrentLevel Tunnel matches 360 run schedule function tunnel:stage3/ambientloop 10

#Barrier to prevent seeing into the past
fill 2830 22 2758 2873 50 2758 minecraft:black_concrete

#Barrier to prevent seeing portion of mancave
fill 2869 22 2759 2873 28 2763 minecraft:black_concrete

#Generate level
execute if score CurrentLevel Tunnel matches 310 run function tunnel:stage3/level1
execute if score CurrentLevel Tunnel matches 320 run function tunnel:stage3/level2
execute if score CurrentLevel Tunnel matches 330 run function tunnel:stage3/level3
execute if score CurrentLevel Tunnel matches 340 run function tunnel:stage3/level4
execute if score CurrentLevel Tunnel matches 350 run function tunnel:stage3/level5
execute if score CurrentLevel Tunnel matches 360 run function tunnel:stage3/level6

schedule function tunnel:stage3/railcheck 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/generate' as: "},{"selector":"@s"}]