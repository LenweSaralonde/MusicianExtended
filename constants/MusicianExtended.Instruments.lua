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

if Musician.INSTRUMENTS["nyckelharpa"] == nil then
	Musician.INSTRUMENTS["nyckelharpa"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\nyckelharpa",
		decay = 150,
		isPercussion = false,
		isPlucked = false,
		midi = 41, -- Viola
		loop = { 4, 5 },
		crossfade = 150,
		color = { 1.00 / 1.25, 0.49 / 1.25, 0.04 / 1.25 },
		release = "Interface\\AddOns\\MusicianExtended\\instruments\\nyckelharpa-release",
		releaseDecay = 1500,
		source = "ERA II Medieval Legends"
	}

	-- Insert the nyckelharpa after the fiddle
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "fiddle" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "nyckelharpa")
end

if Musician.INSTRUMENTS["guzheng"] == nil then
	Musician.INSTRUMENTS["guzheng"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\guzheng",
		decay = 1000,
		isPercussion = false,
		isPlucked = true,
		midi = 107, -- Koto
		color = Musician.COLORS.DarkWhite,
		source = "Nu Guzheng"
	}

	-- Insert the guzheng after the dulcimer
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "dulcimer" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "guzheng")
end