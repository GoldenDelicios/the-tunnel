#Kick all players without changing anything, reset item frame
data merge entity @s {ItemRotation:0b}
function tunnel:exit/kickall

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/rotateitem' as: "},{"selector":"@s"}]
