#Rail system deactivates

#Unload blinking rail
execute in the_end run setblock 2859 24 2774 minecraft:air
execute in the_end run setblock 2858 24 2773 minecraft:air
execute in the_end run setblock 2859 24 2773 minecraft:air

#Unload extra campfires
execute if score CurrentLevel Tunnel matches 340..350 run setblock 2859 24 2772 minecraft:air
execute if score CurrentLevel Tunnel matches 340..350 run setblock 2860 24 2772 minecraft:air
execute if score CurrentLevel Tunnel matches 340..350 run setblock 2858 24 2771 minecraft:air

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/presentsystemdeactivates' as: "},{"selector":"@s"}]