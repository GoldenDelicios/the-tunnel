#Stage 1 present-future smoke effect

execute in the_end run particle minecraft:smoke 2857.44 43.00 2773.38 0 0 2 0 50 force
execute if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage1/smokegap 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/smokegap' as: "},{"selector":"@s"}]