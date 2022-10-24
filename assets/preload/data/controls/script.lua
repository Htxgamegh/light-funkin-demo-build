local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 2);
		makeLuaSprite('Sus', 'Sus', 0, 0);
		scaleObject('Sus', 0.69, 0.69);
		addLuaSprite('Sus', true);
		setObjectCamera('Sus', 'hud');
		setObjectOrder('Sus', 0);
		allowCountdown = true;
		return Function_Stop;
	end
	doTweenAlpha('CGtween2', 'ae ', 0, 0.4, 'linear');
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'folklore');
	end
end

function onTweenCompleted(tag)
if tag == 'CGtween2' then
	removeLuaSprite('ae');
end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)	
	if count == 3 then
		makeGraphic('Sus', 1920, 1080, '000000')
	end
	if count == 3 then
		makeLuaSprite('dorme', 'dorme', 0, 0);
		scaleObject('dorme', 0.69, 0.69);
		addLuaSprite('dorme', true);
		setObjectCamera('dorme', 'hud');
		setObjectOrder('dorme', 0);
	end
	if count == 3 then
	removeLuaSprite('Sus');
	end
        if count == 9 then
		makeLuaSprite('cama', 'cama', 0, 0);
		scaleObject('cama', 0.69, 0.69);
		addLuaSprite('cama', true);
		setObjectCamera('cama', 'hud');
		setObjectOrder('cama', 0);
	end
	if count == 9 then
	removeLuaSprite('dorme');
        end
        if count == 13 then
		makeLuaSprite('ae', 'ae', 0, 0);
		scaleObject('ae', 0.69, 0.69);
		addLuaSprite('ae', true);
		setObjectCamera('ae', 'hud');
		setObjectOrder('ae', 0);
	end
	if count == 13 then
	removeLuaSprite('cama');
        end
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end