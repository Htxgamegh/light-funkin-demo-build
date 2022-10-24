local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 2);
		makeLuaSprite('sol', 'sol', 0, 0);
		scaleObject('sol', 0.69, 0.69);
		addLuaSprite('sol', true);
		setObjectCamera('sol', 'hud');
		setObjectOrder('sol', 0);
		allowCountdown = true;
		return Function_Stop;
	end
	doTweenAlpha('CGtween2', 'ParappaBG', 0, 0.4, 'linear');
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'folklore');
	end
end

function onTweenCompleted(tag)
if tag == 'CGtween2' then
	removeLuaSprite('ParappaBG');
end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)	
	if count == 32 then
		makeGraphic('call', 1920, 1080, '000000')
	end
	if count == 32 then
		makeLuaSprite('lek', 'lek', 0, 0);
		scaleObject('lek', 0.69, 0.69);
		addLuaSprite('lek', true);
		setObjectCamera('lek', 'hud');
		setObjectOrder('lek', 0);
	end
	if count == 32 then
	removeLuaSprite('sol');
	end
        if count == 34 then
		makeLuaSprite('ParappaBG', 'ParappaBG', 0, 0);
		scaleObject('ParappaBG', 0.69, 0.69);
		addLuaSprite('ParappaBG', true);
		setObjectCamera('ParappaBG', 'hud');
		setObjectOrder('ParappaBG', 0);
	end
        if count == 34 then
	removeLuaSprite('lek');
	end
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end