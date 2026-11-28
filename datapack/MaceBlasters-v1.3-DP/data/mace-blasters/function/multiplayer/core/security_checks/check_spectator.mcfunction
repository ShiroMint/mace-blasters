tag @a[gamemode=spectator] add spectator.check
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run gamemode adventure
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run particle minecraft:portal 1000.48 0 1001.1 1 1 1 2 30 force
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run playsound minecraft:block.note_block.bass master @s 1000 0 1000 100 0.7
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run playsound minecraft:block.decorated_pot.shatter master @s 1000 0 1000 100 1
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run team join team.spectator @s
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run tp @s @e[type=marker,tag=marker.lobby_hall,limit=1]
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run tag @s remove spectator.join
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run tag @s remove core.can_see_countdown
execute in mace-blasters:mace as @s[x=0,tag=spectator.check] run tag @s remove core.exit_endgame