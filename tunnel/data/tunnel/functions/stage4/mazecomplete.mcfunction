#If maze is complete, and no one has disc 11 and everyone is in the maze (cannot reach disc 11), nauseate
execute as @a[scores={TunnelOccupant=1..}] at @s run tag @s[y=32,dy=5] add TunnelPast
execute unless entity @a[tag=TunnelPast] unless entity @a[scores={TunnelOccupant=1..},nbt={Inventory:[{id:"minecraft:music_disc_11"}]}] run function tunnel:exit/nauseate

#If no one can reach disc 11, mark maze as complete to prevent further checks
execute unless entity @a[tag=TunnelPast] run scoreboard players set MazeComplete Tunnel 1
tag @a remove TunnelPast

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/mazecomplete' as: "},{"selector":"@s"}]