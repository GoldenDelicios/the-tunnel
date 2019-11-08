#Stage 3 door ambience
playsound minecraft:block.beacon.ambient voice @a 2854.5 32.5 2773.5 0.30

execute if score CurrentLevel Tunnel matches 310..350 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage3/ambientdoor 275

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/ambientdoor' as: "},{"selector":"@s"}]