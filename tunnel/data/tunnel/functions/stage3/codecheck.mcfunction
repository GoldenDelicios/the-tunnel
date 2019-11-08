#Check if player has brought a book required to break the tunnel loop

execute in the_end if entity @a[scores={TunnelOccupant=1..},nbt={Inventory:[{tag:{pages: ['{"text":"Li4uaGFkIHdvcmxkcyBnZXQgbWVzc2VkIHVwIGZyb20gcGF0Y2hlcyBvciBnZXQgY2h1bmsgZXJyb3JzLi4uIG5ldmVyIGNvbXBsZXRlbHkgZmFpbCBiZWZvcmUuLi4gc3R1Y2sgaW4gYW4gaW5maW5pdGUgbG9vcC4uLg=="}']}}]}] run function tunnel:stage3/loopbreaks
execute unless entity @a[scores={TunnelOccupant=1..},nbt={Inventory:[{tag:{pages: ['{"text":"Li4uaGFkIHdvcmxkcyBnZXQgbWVzc2VkIHVwIGZyb20gcGF0Y2hlcyBvciBnZXQgY2h1bmsgZXJyb3JzLi4uIG5ldmVyIGNvbXBsZXRlbHkgZmFpbCBiZWZvcmUuLi4gc3R1Y2sgaW4gYW4gaW5maW5pdGUgbG9vcC4uLg=="}']}}]}] run function tunnel:exit/nauseate

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/codecheck' as: "},{"selector":"@s"}]