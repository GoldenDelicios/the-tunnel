#Clear items undetected by the entrance requirement, except at mancave level

clear @a[scores={TunnelOccupant=1..},distance=..1] #tunnel:invblacklist
kill @e[type=item,distance=..2]

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:enter/clearitems' as: "},{"selector":"@s"}]