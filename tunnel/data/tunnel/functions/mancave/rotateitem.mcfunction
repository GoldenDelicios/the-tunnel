#Exit player who rotated item frame, reset item frame
data merge entity @s {ItemRotation:0b}
execute as @p[distance=..5] run function tunnel:exit/exit

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:mancave/rotateitem' as: "},{"selector":"@s"}]
