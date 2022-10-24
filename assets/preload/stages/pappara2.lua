function onCreate()
	-- background shit
	makeLuaSprite('gasoso', 'ParappaBG', -600, -300);
	setLuaSpriteScrollFactor('gasoso', 0.9, 0.9);

        makeAnimatedLuaSprite('k','Galera',389,300)addAnimationByPrefix('k','dance','galera',24,true)
        objectPlayAnimation('k','dance',false)
        setScrollFactor('k', 0.9, 0.9);

        addLuaSprite('gasoso', false);
        addLuaSprite('k', false);
	

end