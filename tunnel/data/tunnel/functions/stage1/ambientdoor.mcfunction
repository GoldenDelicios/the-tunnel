#Stage 1 ambience
playsound minecraft:block.beacon.ambient voice @a 2854.5 33.5 2773.5 0.6
execute if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage1/ambientdoor 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/ambientdoor' as: "},{"selector":"@s"}]