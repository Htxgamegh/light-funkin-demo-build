function onEndSong()
	if not allowEnd then
		setProperty('inCutscene', true);
		startDialogue('post-dialogue', 'breakfast');
                runTimer('startDialogue', 2);
		makeLuaSprite('ParappaBG', 'ParappaBG', 0, 0);
		scaleObject('ParappaBG', 0.69, 0.69);
		addLuaSprite('ParappaBG', true);
		setObjectCamera('ParappaBG', 'hud');
		setObjectOrder('ParappaBG', 0);
		allowEnd = true;
		return Function_Stop;
	end
	doTweenAlpha('CGtween2', 'ParappaBG ', 0, 0.4, 'linear');
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('post-dialogue', 'breakfast');
	end
end

function onTweenCompleted(tag)
if tag == 'CGtween2' then
	removeLuaSprite('ParappaBG');
end
end