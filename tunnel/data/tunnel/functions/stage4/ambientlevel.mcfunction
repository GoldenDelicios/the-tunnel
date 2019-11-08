#Stage 4 tunnel ambience

playsound minecraft:ambient.cave voice @a 2854.5 33.5 2773.5 0.2
execute if score CurrentLevel Tunnel matches 410 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage4/ambientlevel 1000

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/ambientlevel' as: "},{"selector":"@s"}]