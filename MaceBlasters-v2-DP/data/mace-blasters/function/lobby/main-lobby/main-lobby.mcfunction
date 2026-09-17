# Mace Blasters Main Lobby Function
function mace-blasters:lobby/main-lobby/advancements/below-lobby
function mace-blasters:lobby/main-lobby/team-selector/jointeam
function mace-blasters:lobby/main-lobby/minigame/main-minigame

# Main Lobby Peculiarities

effect give @a[x=-16,y=211,z=-4,dx=31,dy=108,dz=43] regeneration 1 255 true
effect give @a[x=-16,y=211,z=-4,dx=31,dy=108,dz=43] resistance 1 255 true
effect give @a[x=-16,y=211,z=-4,dx=31,dy=108,dz=43] saturation 1 0 true

#Particles tag for distances
tag @a[x=0,y=216,z=31,distance=..50] add lobby.particles.50
tag @a[x=0,y=216,z=31,distance=..75] add lobby.particles.75
tag @a[x=0,y=216,z=31,distance=51..75] add lobby.particles.5175
tag @a[x=0,y=216,z=31,distance=76..95] add lobby.particles.7695

# Particle Effects for Team Selection Area
execute if entity @a[x=0,tag=lobby.particles.50] run particle minecraft:trial_spawner_detection_ominous 10 262 33 2.1 24 2.1 0.00002 14 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle minecraft:trial_spawner_detection -9 262 33 2.1 24 2.1 0.00002 14 force

execute if entity @a[x=0,tag=lobby.particles.50] run particle minecraft:witch 8.49 315 34.49 0.2 0.1 0.2 0 1 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle minecraft:witch -10.46 315 34.48 0.2 0.1 0.2 0 1 force

execute unless entity @a[x=0,tag=lobby.particles.50] if entity @a[x=0,tag=lobby.particles.5175] run particle minecraft:trial_spawner_detection_ominous 10 262 33 2.1 12 2.1 0.00002 7 force
execute unless entity @a[x=0,tag=lobby.particles.50] if entity @a[x=0,tag=lobby.particles.5175] run particle minecraft:trial_spawner_detection -9 262 33 2.1 24 2.1 0.00002 7 force

execute unless entity @a[x=0,tag=lobby.particles.75] if entity @a[x=0,tag=lobby.particles.7695] run particle minecraft:trial_spawner_detection_ominous 10 262 33 2.1 6 2.1 0.00002 3 force
execute unless entity @a[x=0,tag=lobby.particles.75] if entity @a[x=0,tag=lobby.particles.7695] run particle minecraft:trial_spawner_detection -9 262 33 2.1 24 2.1 0.00002 3 force

# Partículas selector equipo azul (Skyreapers)

execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[0.290,0.765,1.000],scale:1} 10 216 31 0.90 0 0 0 2 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[0.290,0.765,1.000],scale:1} 8 216 33 0 0 0.90 0 2 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[0.290,0.765,1.000],scale:1} 10 216 35 0.90 0 0 0 2 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[0.290,0.765,1.000],scale:1} 12 216 33 0 0 0.90 0 2 force

# Partículas selector equipo naranja (Sparks)
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[1.000,0.671,0.098],scale:1} -8 216 33 0 0 0.90 0 2 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[1.000,0.671,0.098],scale:1} -10 216 35 0.90 0 0 0 2 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[1.000,0.671,0.098],scale:1} -12 216 33 0 0 0.90 0 2 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[1.000,0.671,0.098],scale:1} -10 216 31 0.90 0 0 0 2 force

# Partículas selector owner de la pantalla
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[0.490,0.490,0.490],scale:1} 3.9999 216 31 0 0 -0.7 0 2 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[0.490,0.490,0.490],scale:1} -2.9999 216 31 0 0 -0.7 0 2 force
execute if entity @a[x=0,tag=lobby.particles.50] run particle dust{color:[0.490,0.490,0.490],scale:1} 0 216 29.9 -1.5 0 0 0 2 force

# Teleport Players to Credits Area

effect give @a[x=-10,y=215,z=19,dx=0,dy=5,dz=4] minecraft:blindness 1 245 true
tp @a[x=-10,y=215,z=19,dx=0,dy=5,dz=4] 500 216 500


effect give @a[x=502, y=216, z=499, dx=0, dy=4, dz=2] minecraft:blindness 1 245 true
tp @a[x=502, y=216, z=499, dx=0, dy=4, dz=2] -8.00 216 21.52
