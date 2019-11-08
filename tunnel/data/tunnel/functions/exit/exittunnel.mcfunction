#Kick self out of the tunnel, if you're in the tunnel
execute in the_end as @s[scores={TunnelOccupant=1..}] run function tunnel:exit/exit
advancement revoke @s only tunnel:hidden/exittunnel

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/exittunnel' as: "},{"selector":"@s"}]