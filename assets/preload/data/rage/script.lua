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
	doTweenAlpha('CGtween2', 'pagar ', 0, 0.4, 'linear');
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'folklore');
	end
end

function onTweenCompleted(tag)
if tag == 'CGtween2' then
	removeLuaSprite('pagar');
end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)	
	if count == 20 then
		makeGraphic('Sus', 1920, 1080, '000000')
	end
	if count == 20 then
		makeLuaSprite('ratio', 'ratio', 0, 0);
		scaleObject('ratio', 0.69, 0.69);
		addLuaSprite('ratio', true);
		setObjectCamera('ratio', 'hud');
		setObjectOrder('ratio', 0);
	end
	if count == 20 then
	removeLuaSprite('Sus');
	end
        if count == 31 then
		makeLuaSprite('cringe', 'cringe', 0, 0);
		scaleObject('cringe', 0.69, 0.69);
		addLuaSprite('cringe', true);
		setObjectCamera('cringe', 'hud');
		setObjectOrder('cringe', 0);
	end
	if count == 31 then
	removeLuaSprite('ratio');
        end
        if count == 43 then
		makeLuaSprite('aha', 'aha', 0, 0);
		scaleObject('aha', 0.69, 0.69);
		addLuaSprite('aha', true);
		setObjectCamera('aha', 'hud');
		setObjectOrder('aha', 0);
	end
	if count == 43 then
	removeLuaSprite('cringe');
        end
        if count == 51 then
		makeLuaSprite('misera', 'misera', 0, 0);
		scaleObject('misera', 0.69, 0.69);
		addLuaSprite('misera', true);
		setObjectCamera('misera', 'hud');
		setObjectOrder('misera', 0);
	end
        if count == 51 then
	removeLuaSprite('aha');
        end
        if count == 59 then
		makeLuaSprite('parede', 'parede', 0, 0);
		scaleObject('parede', 0.69, 0.69);
		addLuaSprite('parede', true);
		setObjectCamera('parede', 'hud');
		setObjectOrder('parede', 0);
	end
	if count == 59 then
	removeLuaSprite('misera');
        end
        if count == 65 then
		makeLuaSprite('ai', 'ai', 0, 0);
		scaleObject('ai', 0.69, 0.69);
		addLuaSprite('ai', true);
		setObjectCamera('ai', 'hud');
		setObjectOrder('ai', 0);
	end
	if count == 65 then
	removeLuaSprite('parede');
        end
        if count == 69 then
		makeLuaSprite('mamar', 'mamar', 0, 0);
		scaleObject('mamar', 0.69, 0.69);
		addLuaSprite('mamar', true);
		setObjectCamera('mamar', 'hud');
		setObjectOrder('mamar', 0);
	end
	if count == 69 then
	removeLuaSprite('ai');
        end
        if count == 72 then
		makeLuaSprite('full', 'full', 0, 0);
		scaleObject('full', 0.69, 0.69);
		addLuaSprite('full', true);
		setObjectCamera('full', 'hud');
		setObjectOrder('full', 0);
	end
	if count == 72 then
	removeLuaSprite('mamar');
        end
        if count == 79 then
		makeLuaSprite('vai', 'vai', 0, 0);
		scaleObject('vai', 0.69, 0.69);
		addLuaSprite('vai', true);
		setObjectCamera('vai', 'hud');
		setObjectOrder('vai', 0);
	end
	if count == 79 then
	removeLuaSprite('full');
        end
        if count == 80 then
		makeLuaSprite('pagar', 'pagar', 0, 0);
		scaleObject('pagar', 0.69, 0.69);
		addLuaSprite('pagar', true);
		setObjectCamera('pagar', 'hud');
		setObjectOrder('pagar', 0);
	end
	if count == 80 then
	removeLuaSprite('vai');
        end
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

local allowEndShit = false

function onEndSong()
 if not allowEndShit and isStoryMode and not seenCutscene then
  setProperty('inCutscene', true);
  startDialogue('post-dialogue', 'breakfast'); 
  	makeLuaSprite('SpaceBG', 'SpaceBG', 0, 0);
		scaleObject('SpaceBG', 0.67, 0.67);
		addLuaSprite('SpaceBG', true);
		setObjectCamera('SpaceBG', 'hud');	
		setObjectOrder('SpaceBG', 0);
  allowEndShit = true;
  return Function_Stop;
 end
 return Function_Continue;
end