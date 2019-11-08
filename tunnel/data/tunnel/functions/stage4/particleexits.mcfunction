execute in the_end run playsound minecraft:block.end_portal.spawn voice @a 2859.5 34.5 2773.5

execute in the_end run particle minecraft:end_rod 2859.5 34.5 2773.5 0 0 2 0.0 100 force
execute in the_end run particle minecraft:enchant 2859.5 34.5 2773.5 0 0 2 0.5 100 force
execute in the_end run particle minecraft:portal 2859.5 33.5 2773.5 0 0 2 0.5 100 force
execute in the_end run particle minecraft:end_rod 2857.5 34.5 2773.5 1 0 0 0.0 50 force
execute in the_end run particle minecraft:enchant 2857.5 34.5 2773.5 1 0 0 0.5 50 force
execute in the_end run particle minecraft:portal 2857.5 33.5 2773.5 1 0 0 0.5 50 force

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/particleexits' as: "},{"selector":"@s"}]
