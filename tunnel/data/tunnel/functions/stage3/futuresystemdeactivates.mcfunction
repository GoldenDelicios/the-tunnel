#Rail system deactivates

#Unload blinking rail
execute in the_end run setblock 2853 24 2773 minecraft:air
execute in the_end run setblock 2852 24 2773 minecraft:air
execute in the_end run setblock 2853 24 2772 minecraft:air

#unload extra campfires
execute if score CurrentLevel Tunnel matches 330..350 run setblock 2854 24 2773 minecraft:air
execute if score CurrentLevel Tunnel matches 330..350 run setblock 2854 24 2774 minecraft:air
execute if score CurrentLevel Tunnel matches 330..350 run setblock 2855 24 2772 minecraft:air

#Block NextLevel
execute if score CurrentLevel Tunnel matches 310..340 run scoreboard players operation NextLevel Tunnel = CurrentLevel Tunnel

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/futuresystemdeactivates' as: "},{"selector":"@s"}]