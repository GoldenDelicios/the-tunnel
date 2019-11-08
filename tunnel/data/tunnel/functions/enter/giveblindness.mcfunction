#Blindness
execute as @a[scores={TunnelOccupant=1..},gamemode=adventure] at @s anchored eyes unless block ^ ^ ^ #tunnel:containswater unless block ^ ^ ^ #tunnel:waterloggable[waterlogged=true] run effect give @s minecraft:blindness 32 1 true
execute as @a[scores={TunnelOccupant=1..}] at @s anchored eyes if block ^ ^ ^ #tunnel:containswater run effect clear @s minecraft:blindness
execute as @a[scores={TunnelOccupant=1..}] at @s anchored eyes if block ^ ^ ^ #tunnel:waterloggable[waterlogged=true] run effect clear @s minecraft:blindness

#Hunger
execute as @a[scores={TunnelOccupant=1.., Hunger=..6}] run effect clear @s minecraft:hunger
execute as @a[scores={TunnelOccupant=1.., Hunger=..5}] run effect give @s minecraft:saturation 1 0 true

#Re-enter on escaping the tunnel
execute in minecraft:the_end positioned 2829 21 2735 as @a[scores={TunnelOccupant=1..}] unless entity @s[dx=44,dy=31,dz=52] run function tunnel:enter/enter

#Prevent ender pearl and boat usage
execute in minecraft:the_end positioned 2829 21 2735 run kill @e[dx=44,dy=31,dz=52,type=#tunnel:canclip]

#Clear items undetected by the entrance requirement, except at mancave level
#execute unless score CurrentLevel Tunnel matches 500 in the_end positioned 2859 33 2763 run function tunnel:enter/clearitems

#Reschedule
execute if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:enter/giveblindness 1

#Verbosity
tellraw @a[tag=TunnelDebug] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:enter/giveblindness' as: "},{"selector":"@s"}]