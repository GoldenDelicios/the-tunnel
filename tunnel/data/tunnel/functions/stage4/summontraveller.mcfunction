execute in the_end run particle minecraft:poof 2858.5 33.5 2773.5 0 0 0 0.01 20
execute in the_end run summon minecraft:enderman 2858 33 2773 {Tags:["TunnelTraveller"], NoAI:1b, Health:0.01f, DeathLootTable:"minecraft:empty"}
function tunnel:stage4/travellerstares

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage4/summontraveller' as: "},{"selector":"@s"}]
