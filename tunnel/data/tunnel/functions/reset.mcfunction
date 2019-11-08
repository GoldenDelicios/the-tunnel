#Reset progress

scoreboard players reset * Tunnel
function tunnel:restart

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:reset' as: "},{"selector":"@s"}]