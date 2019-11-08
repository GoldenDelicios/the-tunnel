#Stage 3 tunnel ambience

playsound minecraft:block.water.ambient voice @a 2860.5 33.5 2775.5 0.30
playsound minecraft:block.water.ambient voice @a 2851.5 33.5 2774.5 0.30

playsound minecraft:ambient.underwater.loop.additions.rare voice @a 2857.5 25.5 2773.5 0.7 0.75

execute if score CurrentLevel Tunnel matches 310..350 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage3/ambientlevel 500

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/ambientlevel' as: "},{"selector":"@s"}]