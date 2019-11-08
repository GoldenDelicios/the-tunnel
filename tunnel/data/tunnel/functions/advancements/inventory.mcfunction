#Inventory

#Check containers, if tunnel is occupied
execute in the_end run function tunnel:advancements/container

advancement revoke @s only tunnel:hidden/inventory

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:advancements/inventory' as: "},{"selector":"@s"}]