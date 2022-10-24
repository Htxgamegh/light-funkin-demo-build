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