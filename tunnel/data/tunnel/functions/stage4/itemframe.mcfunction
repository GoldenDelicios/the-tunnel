#Check for item frame rotation
execute as @e[tag=TunnelFrame,nbt=!{ItemRotation:0b}] at @s run function tunnel:stage4/rotateitem
execute if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage4/itemframe 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/itemframe' as: "},{"selector":"@s"}]
