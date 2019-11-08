#Stage 4 ambience
playsound minecraft:block.beacon.ambient voice @a 2857.5 33.5 2754.5 0.6
playsound minecraft:block.beacon.ambient voice @a 2871.5 25.5 2756.5 0.6
execute if score CurrentLevel Tunnel matches 410 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage4/ambientdoor 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/ambientdoor' as: "},{"selector":"@s"}]