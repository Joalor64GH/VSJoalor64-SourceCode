function onCreate()
	makeAnimatedLuaSprite('snowGif', 'snowGif', 0, 0);
	setLuaSpriteScrollFactor('snowGif', 0.3, 0.3);
	scaleObject('snowGif', 5, 5);

	addLuaSprite('snowGif', true);
	addAnimationByPrefix('snowGif', 'loop', 'anim', 15, true);
end