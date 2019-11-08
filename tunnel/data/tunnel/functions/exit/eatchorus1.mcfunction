#Kick self out of the tunnel, if you're in the tunnel
execute in the_end as @a[tag=TunnelExit,scores={TunnelOccupant=1..}] run function tunnel:exit/exit
tag @a remove TunnelExit

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/eatchorus1' as: "},{"selector":"@s"}]