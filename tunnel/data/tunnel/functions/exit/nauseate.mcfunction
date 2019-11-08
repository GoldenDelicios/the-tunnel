#Nauseate tunnel occupants

effect give @a[scores={TunnelOccupant=1..}] minecraft:nausea 10 0 true
execute as @a[scores={TunnelOccupant=1..}] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare voice @s ~ ~ ~ 2 2 1
schedule function tunnel:exit/kickall 100

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/nauseate' as: "},{"selector":"@s"}]
