#Kick self out of the tunnel, if you're in the tunnel
tag @s add TunnelExit
advancement revoke @s only tunnel:hidden/eatchorus
advancement revoke @s only tunnel:hidden/exitgateway
schedule function tunnel:exit/eatchorus1 1

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/eatchorus' as: "},{"selector":"@s"}]