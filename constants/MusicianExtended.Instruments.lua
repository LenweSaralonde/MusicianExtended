if Musician.INSTRUMENTS["pipe-organ"] == nil then
	Musician.INSTRUMENTS["pipe-organ"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\pipe-organ",
		decay = 150,
		isPercussion = false,
		isPlucked = false,
		midi = 19, -- ChurchOrgan
		loop = { 4, 5 },
		crossfade = 150,
		color = { 0.85, 0.95, 1 },
		source = "Leeds Town Hall Organ"
	}

	-- Insert the pipe organ after the piano
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "piano" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "pipe-organ")
end
