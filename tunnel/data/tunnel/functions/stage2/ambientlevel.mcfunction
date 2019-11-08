#Stage 2 tunnel ambience

playsound minecraft:block.water.ambient voice @a 2860.5 33.5 2775.5 0.30
playsound minecraft:block.water.ambient voice @a 2851.5 33.5 2774.5 0.30
execute if score CurrentLevel Tunnel matches 210..261 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage2/ambientlevel 300

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage2/ambientlevel' as: "},{"selector":"@s"}]