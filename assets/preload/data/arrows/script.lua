local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 2);
		makeLuaSprite('call', 'call', 0, 0);
		scaleObject('call', 0.69, 0.69);
		addLuaSprite('call', true);
		setObjectCamera('call', 'hud');
		setObjectOrder('call', 0);
		allowCountdown = true;
		return Function_Stop;
	end
	doTweenAlpha('CGtween2', 'oi', 0, 0.4, 'linear');
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'folklore');
	end
end

function onTweenCompleted(tag)
if tag == 'CGtween2' then
	removeLuaSprite('oi');
end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)	
	if count == 36 then
		makeGraphic('call', 1920, 1080, '000000')
	end
	if count == 36 then
		makeLuaSprite('elevador', 'elevador', 0, 0);
		scaleObject('elevador', 0.69, 0.69);
		addLuaSprite('elevador', true);
		setObjectCamera('elevador', 'hud');
		setObjectOrder('elevador', 0);
	end
	if count == 37 then
	removeLuaSprite('call');
	end
        if count == 46 then
		makeLuaSprite('oi', 'oi', 0, 0);
		scaleObject('oi', 0.69, 0.69);
		addLuaSprite('oi', true);
		setObjectCamera('oi', 'hud');
		setObjectOrder('oi', 0);
	end
        if count == 47 then
	removeLuaSprite('elevador');
	end
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end