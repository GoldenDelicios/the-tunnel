#Ambient portal particles while Disc 11 plays
execute in the_end run particle minecraft:portal 2859.5 33.5 2773.5 3 1 3 0 100 force
execute unless score CurrentLevel Tunnel matches 500 unless entity @e[type=enderman,tag=TunnelTraveller] run schedule function tunnel:stage4/particleportal 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/particleportal' as: "},{"selector":"@s"}]