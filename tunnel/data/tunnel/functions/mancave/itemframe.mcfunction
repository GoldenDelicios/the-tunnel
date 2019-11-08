#Check for item frame rotation
execute as @e[tag=TunnelFrame,nbt=!{ItemRotation:0b}] at @s run function tunnel:mancave/rotateitem
execute if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:mancave/itemframe 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:mancave/itemframe' as: "},{"selector":"@s"}]
