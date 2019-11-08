#Squid Leap

#Allow squidding if: player is falling at or towards a terminal velocity
execute if entity @s[nbt={FallFlying:0b}] run particle minecraft:squid_ink ~ ~ ~ 1.25 5 1.25 0 500 force

#Revoke advancement
advancement revoke @s only tunnel:hidden/squidleap

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:enter/squidleap' as: "},{"selector":"@s"}]