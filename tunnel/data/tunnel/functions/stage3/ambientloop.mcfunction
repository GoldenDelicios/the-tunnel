#Stage 3 loop ambience
playsound minecraft:block.beacon.ambient voice @a 2859.5 26.5 2769.5 0.4
playsound minecraft:block.beacon.ambient voice @a 2857.5 26.5 2773.5 0.4
playsound minecraft:block.beacon.ambient voice @a 2853.5 26.5 2771.5 0.4
playsound minecraft:block.beacon.ambient voice @a 2855.5 26.5 2767.5 0.4
playsound minecraft:block.beacon.ambient voice @a 2859.5 33.5 2769.5 0.4
playsound minecraft:block.beacon.ambient voice @a 2857.5 33.5 2773.5 0.4
playsound minecraft:block.beacon.ambient voice @a 2853.5 33.5 2771.5 0.4
playsound minecraft:block.beacon.ambient voice @a 2855.5 33.5 2767.5 0.4

execute if score CurrentLevel Tunnel matches 360 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage3/ambientloop 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/ambientloop' as: "},{"selector":"@s"}]