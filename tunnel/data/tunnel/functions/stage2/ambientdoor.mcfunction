#Stage 2 door ambience
playsound minecraft:block.beacon.ambient voice @a 2857.5 32.5 2773.5 0.3
execute if score CurrentLevel Tunnel matches 210..261 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage2/ambientdoor 225

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage2/ambientdoor' as: "},{"selector":"@s"}]