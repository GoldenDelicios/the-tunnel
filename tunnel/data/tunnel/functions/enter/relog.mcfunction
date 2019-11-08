#Re-enter if relogged

scoreboard players set @s TunnelOccupant 0
scoreboard players set @s TunnelLogout 0
function tunnel:enter/enter

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:enter/relog' as: "},{"selector":"@s"}]
