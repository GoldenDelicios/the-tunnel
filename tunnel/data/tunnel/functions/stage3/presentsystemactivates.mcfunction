#Rail system activates

#Load blinking rail
execute in the_end run setblock 2859 24 2773 minecraft:campfire
execute in the_end run setblock 2859 24 2774 minecraft:redstone_wall_torch[facing=east]
execute in the_end run setblock 2858 24 2773 minecraft:redstone_wall_torch[facing=north]

#Add extra particles
execute if score CurrentLevel Tunnel matches 340..350 run schedule function tunnel:stage3/presentdoorsmokes 10
execute if score CurrentLevel Tunnel matches 340..350 run setblock 2859 24 2772 minecraft:campfire
execute if score CurrentLevel Tunnel matches 340..350 run setblock 2860 24 2772 minecraft:campfire
execute if score CurrentLevel Tunnel matches 340..350 run setblock 2858 24 2771 minecraft:campfire

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/presentsystemactivates' as: "},{"selector":"@s"}]