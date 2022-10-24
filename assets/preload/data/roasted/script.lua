-- Script made by Catbrother Everything with help by NardBruh. Credit is not needed but would be nice! :)

function onCreate()
	makeAnimatedLuaSprite('Drawn Mask', 'characters/Drawn Mask', 250, 48); -- Change to characters idle in XML
	addAnimationByPrefix('Drawn Mask', 'idle', 'idle', 24, false); -- Change to characters idle in XML
    addAnimationByPrefix('Drawn Mask', '0', 'left', 24, false); -- Change to characters leftnote in XML
    addAnimationByPrefix('Drawn Mask', '1', 'down', 24, false); -- Change to characters downnote in XML
    addAnimationByPrefix('Drawn Mask', '2', 'up', 24, false); -- Change to characters upnote in XML
    addAnimationByPrefix('Drawn Mask', '3', 'right', 24, false); -- Change to characters rightnote in XML
	objectPlayAnimation('Drawn Mask', 'idle'); 
	addLuaSprite('Drawn Mask', true); -- false = add behind characters, true = add over characters
end
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Drawn Mask', 'idle');
	end
end

lastNote = {0, ""}

function opponentNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "No Animation" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('Drawn Mask', lastNote[1]);
    end
end