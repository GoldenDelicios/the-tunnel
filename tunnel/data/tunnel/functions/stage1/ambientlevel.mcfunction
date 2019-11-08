#Stage 1 tunnel ambience

playsound minecraft:ambient.cave voice @a 2854.5 33.5 2773.5 0.2
execute if score CurrentLevel Tunnel matches 110..161 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage1/ambientlevel 1000

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/ambientlevel' as: "},{"selector":"@s"}]