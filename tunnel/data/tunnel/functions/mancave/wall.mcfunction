#Count number of players at first lectern
scoreboard players operation MasksOld Tunnel = Masks Tunnel
execute in the_end unless score Masks Tunnel matches 10.. positioned 2858 33 2775 store result score Masks Tunnel if entity @a[dx=1,dy=1,dz=3,nbt={Inventory:[{Slot:103b, id:"minecraft:player_head", tag:{SkullOwner:{Id:"93b459be-ce4f-4700-b457-c1aa91b3b687"}}}]}]
#execute in the_end unless score Masks Tunnel matches 10.. positioned 2858 33 2775 store result score Masks Tunnel if entity @e[dx=1,dy=1,dz=3]

#Add or remove cracks
execute in the_end if score Masks Tunnel matches ..9 run function tunnel:mancave/wallcracks

#Burst the wall
execute in the_end if score Masks Tunnel matches 10.. run function tunnel:mancave/wallbursts
execute unless score Masks Tunnel matches 10.. if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:mancave/wall 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:mancave/wall' as: "},{"selector":"@s"}]