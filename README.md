"/trigger dialogue_gettools" to get the items
This will give you the following

"Dialogue changer (loop)": Repeats the dialogue after the last message
"Dialogue changer (no loop)": Stops the dialogue at the last message (Right clicking again will display the last message)
"Reset dialogue": Right click a villager with this item to restart its dialogue
"Remove dialogue": Removes the dialogue from the villager
"View dialogue": Right click a villager with this to get its dialogue book

How to use:
Type the dialogue in the special books then right click a villager to apply it to them. Write each message on a seperate page in the JSON text format (accepts nbt, selector and score). The dialogue is advanced by right clicking the villager.

To run commands, type [COMMAND] on an empty page and your command on the next page

Example:

Page 1: "This is a message before the command"
Page 2: [COMMAND]
Page 3: setblock 123 0 123 stone
Page 4: "This is a message after the command"

With this setup, the first right click will display "This is a message before the command", the second will set the block at 123 0 123 to stone, and the third will display "This is a message after the command"

Running a command places down two command blocks for a tick at the villager. (The lower one executes the command and the top one fills both blocks with air)
