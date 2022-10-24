function opponentNoteHit(id, noteData, noteType, isSustainNote)
    triggerEvent('Screen Shake', '0.05, 0.01', '0, 0');
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.02);
    end
end