function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Instakill' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'instakill'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Instakill' then
			playSound('instakill', 1)
			setProperty('health', -500);
		characterPlayAnim('boyfriend', 'hey', true);
		characterPlayAnim('pico', 'down', true);

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Instakill' then
		playSound('instakill', 1)
		characterPlayAnim('boyfriend', 'hey', true);
		characterPlayAnim('pico', 'down', true);
	end
end