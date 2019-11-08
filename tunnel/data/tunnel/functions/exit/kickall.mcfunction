#Kick everyone out of the tunnel
execute in the_end as @a[scores={TunnelOccupant=1..}] run function tunnel:exit/exit

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/kickall' as: "},{"selector":"@s"}]
