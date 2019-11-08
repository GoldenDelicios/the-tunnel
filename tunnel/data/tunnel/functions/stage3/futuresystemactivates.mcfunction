#Rail system activates

#Load blinking rail
execute in the_end run setblock 2853 24 2773 minecraft:campfire
execute in the_end run setblock 2852 24 2773 minecraft:redstone_wall_torch[facing=south]
execute in the_end run setblock 2853 24 2772 minecraft:redstone_wall_torch[facing=east]

#Add extra particles
execute if score CurrentLevel Tunnel matches 330..340 run schedule function tunnel:stage3/futuredoorsmokes 10
execute if score CurrentLevel Tunnel matches 330..350 run setblock 2854 24 2773 minecraft:campfire
execute if score CurrentLevel Tunnel matches 330..350 run setblock 2854 24 2774 minecraft:campfire
execute if score CurrentLevel Tunnel matches 330..350 run setblock 2855 24 2772 minecraft:campfire

#Advance NextLevel
execute if score CurrentLevel Tunnel matches 310..340 run scoreboard players operation NextLevel Tunnel = CurrentLevel Tunnel
execute if score CurrentLevel Tunnel matches 310..340 run scoreboard players add NextLevel Tunnel 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/futuresystemactivates' as: "},{"selector":"@s"}]