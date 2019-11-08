#Future Door smoke

execute in the_end run particle minecraft:campfire_signal_smoke 2855.5 30.5 2772.5 0.1 0.1 0.1 0.01 1
execute in the_end run particle minecraft:lava 2855.5 30.5 2772.5 0.1 0.1 0.1 0.01 3
execute in the_end if score CurrentLevel Tunnel matches 330..340 if entity @a[scores={TunnelOccupant=1..}] if block 2855 24 2772 minecraft:campfire run schedule function tunnel:stage3/futuredoorsmokes 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/futuredoorsmokes' as: "},{"selector":"@s"}]