# Por qué? Simplemente... ¿Por qué? :(  Esta función se encarga de que de ninguna manera puedas tirar tus cosas, aún así no las cubre absolutamente todas #THX MOJANG...
# Why? Just... Why? :( This function makes sure that you can't throw away your stuff, but it still doesn't cover absolutely all of it #THX MOJANG...

execute as @e[type=item] if items entity @s contents wind_charge run kill @s

execute as @a unless predicate mace-blasters:windcharge_check run item replace entity @s[team=team.sky] weapon.offhand with wind_charge[unbreakable={}] 64
execute if predicate mace-blasters:windcharge_check run tag @s[team=team.sky] add core.security.fix_windcharge
execute as @a[tag=core.security.fix_windcharge] run clear @s[team=team.spark] minecraft:wind_charge
execute as @a[tag=core.security.fix_windcharge] run item replace entity @s[team=team.sky] weapon.offhand with wind_charge[unbreakable={}] 64
tag @a[tag=core.security.fix_windcharge] remove core.security.fix_windcharge

execute as @a unless predicate mace-blasters:windcharge_check run item replace entity @s[team=team.spark] weapon.offhand with wind_charge[unbreakable={}] 64
execute if predicate mace-blasters:windcharge_check run tag @s[team=team.spark] add core.security.fix_windcharge
execute as @a[tag=core.security.fix_windcharge] run clear @s[team=team.spark] minecraft:wind_charge
execute as @a[tag=core.security.fix_windcharge] run item replace entity @s[team=team.spark] weapon.offhand with wind_charge[unbreakable={}] 64
tag @a[tag=core.security.fix_windcharge] remove core.security.fix_windcharge


execute as @e[type=item] if items entity @s contents mace run kill @s

 execute if predicate mace-blasters:mace_check unless items entity @s[team=team.sky] weapon.mainhand mace run tag @s add core.security.fix_mace
 execute unless predicate mace-blasters:mace_check run tag @s[team=team.sky] add core.security.fix_mace
 execute as @a[tag=core.security.fix_mace] run clear @s[team=team.sky] minecraft:mace
 execute as @a[tag=core.security.fix_mace] run item replace entity @s[team=team.sky] weapon.mainhand from block 992 0 1004 container.4
 tag @a[tag=core.security.fix_mace] remove core.security.fix_mace
 
 execute if predicate mace-blasters:mace_check unless items entity @s[team=team.spark] weapon.mainhand mace run tag @s[team=team.spark] add core.security.fix_mace
 execute unless predicate mace-blasters:mace_check run tag @s[team=team.spark] add core.security.fix_mace
 execute as @a[tag=core.security.fix_mace] run clear @s[team=team.spark] minecraft:mace
 execute as @a[tag=core.security.fix_mace] run item replace entity @s[team=team.spark] weapon.mainhand from block 992 0 1004 container.4
 tag @a[tag=core.security.fix_mace] remove core.security.fix_mace