#Break the tunnel loop

particle minecraft:explosion_emitter 2856.36 27.37 2770.00 0 0 0 0 10 force

#Load unloop
setblock 2848 22 2762 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_unloop"}
setblock 2848 23 2762 minecraft:redstone_block
scoreboard players set NextLevel Tunnel 410

execute as @a[scores={TunnelOccupant=1..}] at @s run playsound minecraft:entity.lightning_bolt.thunder voice @s ~ ~ ~
execute as @a[scores={TunnelOccupant=1..}] at @s run playsound minecraft:entity.wither.death voice @s ~ ~ ~ 0.65 2 1

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/loopbreaks' as: "},{"selector":"@s"}]