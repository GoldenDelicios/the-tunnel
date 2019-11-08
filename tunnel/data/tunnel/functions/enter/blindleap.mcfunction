#Blind Leap

#Allow entry if tunnel is complete, or inventory has no blacklisted items
execute store result score @s Tunnel run clear @s #tunnel:invblacklist 0
execute if score CurrentLevel Tunnel matches 500 run scoreboard players set @s Tunnel 0

#Check for anachronistic door, deny entry if not in inventory
#execute if entity @s[nbt={Inventory:[{id:"minecraft:spruce_door",tag:{display:{Name:'{"color":"yellow","text":"Anachronistic Door"}'}}}]}] run scoreboard players set @s Tunnel 1

execute if entity @s[nbt={FallFlying:0b},scores={Tunnel=0}] in the_end run function tunnel:enter/enter
execute if entity @s[nbt={FallFlying:0b},scores={Tunnel=1..}] in the_end run function tunnel:exit/respawn

#Special logic for players flying with elytra
execute if entity @s[y=-30,dy=-100,scores={Tunnel=0}] in minecraft:the_end run function tunnel:enter/enter
execute if entity @s[y=-30,dy=-100,scores={Tunnel=1..}] in minecraft:the_end run function tunnel:exit/respawn

#Revoke advancement
advancement revoke @s only tunnel:hidden/blindleap

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:enter/blindleap' as: "},{"selector":"@s"}]