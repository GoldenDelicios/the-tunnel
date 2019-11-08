#Enter

#Set to adventure mode, give effects
#	Note: Blindness is removed whenever the player enters water, to avoid MC-4647
gamemode adventure @s
effect clear @s
effect give @s minecraft:water_breathing 1000000 0 true
effect give @s minecraft:resistance 1000000 5 true
effect give @s minecraft:instant_health 20 0 true
effect give @s minecraft:hunger 100 255 true
effect give @s minecraft:blindness 32 1 true
effect give @s minecraft:slow_falling 2 1 true
schedule function tunnel:enter/giveblindness 2

#If tunnel is unoccupied, generate level
execute unless entity @a[scores={TunnelOccupant=1..}] in the_end run function tunnel:enter/generate

#Mark as occupant, teleport to tunnel
scoreboard players set @s TunnelOccupant 1
scoreboard players set @s TunnelLogout 0
execute in the_end run tp @s 2859 33 2763 0 0
execute unless score CurrentLevel Tunnel matches 500 run advancement grant @s only tunnel:core/thetunnel
execute unless score CurrentLevel Tunnel matches 500 unless entity @s[nbt={Inventory:[{id:"minecraft:chorus_fruit"}]}] run give @s minecraft:chorus_fruit{display:{Name:'{"text":"Emergency Escape"}'}}

#If restarts are enabled, set to final level after period of inactivity (2 hours)
execute if score EnableRestarts Tunnel matches 1 run schedule function tunnel:complete 144000

#Entrance event
execute in the_end run function #tunnel:entrance

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:enter/enter' as: "},{"selector":"@s"}]