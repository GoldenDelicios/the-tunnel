#Door smoke

execute in the_end run particle minecraft:campfire_signal_smoke 2858.5 30.5 2771.5 0.1 0.1 0.1 0.01 1
execute in the_end run particle minecraft:lava 2858.5 30.5 2771.5 0.1 0.1 0.1 0.01 3
execute in the_end if score CurrentLevel Tunnel matches 330..350 if entity @a[scores={TunnelOccupant=1..}] if block 2858 24 2771 minecraft:campfire run schedule function tunnel:stage3/presentdoorsmokes 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/presentdoorsmokes' as: "},{"selector":"@s"}]