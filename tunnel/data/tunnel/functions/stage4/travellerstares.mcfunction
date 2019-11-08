#Enderman stares at nearest player
execute as @e[type=minecraft:enderman,tag=TunnelTraveller] at @s anchored eyes facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=TunnelTraveller] run schedule function tunnel:stage4/travellerstares 1

#Verbosity
tellraw @a[tag=TunnelDebug] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/travellerstares' as: "},{"selector":"@s"}]
