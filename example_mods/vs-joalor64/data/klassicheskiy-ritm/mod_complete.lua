function onEndSong() 
    if not allowEnd and not isStoryMode then
        giveAchievement("mod_complete")
        allowEnd = true;
        return Function_Stop;
    end
    return Function_Continue;
end