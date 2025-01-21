/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {torch_pickup: |There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. There is a dim light towards the end of the tunnel but not enough to see anything. You need a brighter light.
* {torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== torch_pickup ==
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== west_tunnel_lit ==
There are scorpions everywhere.
* [Use torch to fend off the scorpions] -> scorpion_fight
* [Run to the light at the end of the tunnel] -> west_tunnel_end

== scorpion_fight ==
You flail around and use your torch to fend the scorpions off to the best of your ability but it's no good. The scorpions surround you and inject their poison into your blood. The pain overwhelms you as you are left to die in the cave alone.
-> END

== west_tunnel_end ==
You sprint as hard as you can. Harder than you ever have in your life. You get stung by a scorpion but the adrenaline takes over and you make it out. The path leads north and west.
+ [Go east] -> east_exit
+ [Go west] -> west_exit

== east_exit ==
You successfully make it out of the cave. Being careful not to misstep, you carefully walk along the edge of the cliff and make it to safer grounds. After the adrenaline wears off, you feel the pain from the scorpion sting in your leg. Luckily, the scorpions in the cave weren't all that harmful and you make it out to safety.
-> END

== west_exit ==
Having been so caught up with surviving the scorpions, you take a mismisstep and lose balance. You fall off the cliff and die.
-> END
