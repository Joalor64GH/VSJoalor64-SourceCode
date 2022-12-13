-----Settings------

local gfSpeed = 1;

-------------------

function onCreate()
	-- clock shit
	makeLuaSprite('Clock', 'clock/clock', 1080, 550);
      scaleObject('Clock', 0.5, 0.5)
	setScrollFactor('Clock', 1, 1);
      setObjectCamera('Clock', 'hud')
      addLuaSprite('Clock', true)
end

function onCreatePost()
    setProperty('timeBar.visible', false);
    setProperty('timeBarBG.visible', false);
    setProperty('timeTxt.x', 965);
    setProperty('timeTxt.y', 603.2);
    setProperty('timeTxt.scale.x', 0.85);
    setProperty('timeTxt.scale.y', 0.85);
end

function onBeatHit()

	if (curBeat % gfSpeed == 0) then
		if curBeat % (gfSpeed * 2) == 0 then
			setProperty('Clock.scale.x', 0.5 );
			setProperty('Clock.scale.y', 0.5 );
			setProperty('timeTxt.scale.x', 0.85 );
			setProperty('timeTxt.scale.y', 0.85 );

			setProperty('Clock.angle', 15);
			setProperty('timeTxt.angle', 15);
		else
			setProperty('Clock.scale.x', 0.5 );
			setProperty('Clock.scale.y', 0.5 );
			setProperty('timeTxt.scale.x', 0.85 );
			setProperty('timeTxt.scale.y', 0.85 );

			setProperty('Clock.angle', -15);
			setProperty('timeTxt.angle', -15);
		end
      end
end

function onUpdate()

    if (getProperty('Clock.angle') >= 0) then
	    if ('Clock.angle' ~= 0) then
    	    setProperty('Clock.angle', getProperty('Clock.angle')-1);
    	end
    else
        if ('Clock.angle' ~= 0) then
    	    setProperty('Clock.angle', getProperty('Clock.angle')+1);
    	end

    if (getProperty('timeTxt.angle') >= 0) then
	    if ('timeTxt.angle' ~= 0) then
    	    setProperty('timeTxt.angle', getProperty('timeTxt.angle')-1);
    	end
    else
        if ('timeTxt.angle' ~= 0) then
    	    setProperty('timeTxt.angle', getProperty('timeTxt.angle')+1);
    	end
    end
   end
end

function onEndSong()
     playSound('ring');
end