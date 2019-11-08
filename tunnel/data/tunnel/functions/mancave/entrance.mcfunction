#On player entrance

#Play dragon music
stopsound @s voice minecraft:music.dragon
execute if score CurrentLevel Tunnel matches 500 at @s run playsound minecraft:music.dragon voice @s ~ ~ ~

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:mancave/entrance' as: "},{"selector":"@s"}]
