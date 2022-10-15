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
		color = { 1, 0.85, 0.95 },
		source = "Nu Guzheng"
	}

	-- Insert the guzheng after the dulcimer
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "dulcimer" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "guzheng")
end

if Musician.INSTRUMENTS["dizi"] == nil then
	Musician.INSTRUMENTS["dizi"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\dizi",
		decay = 150,
		isPercussion = false,
		midi = 73, -- Flute
		loop = { 4, 5 },
		crossfade = 150,
		color = { 0.00, 1.00 / 1.25, 0.59 / 1.25 },
		source = "Mini DiZi"
	}

	-- Insert the dizi after the recorder
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "recorder" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "dizi")
end

if Musician.INSTRUMENTS["erhu"] == nil then
	Musician.INSTRUMENTS["erhu"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\erhu",
		decay = 100,
		isPercussion = false,
		midi = 92, -- Pad5Bowed
		loop = { 5, 5 },
		crossfade = 100,
		color = { 0.9, 0.359, 0.029 },
		source = "Mini ErHu"
	}

	-- Insert the erhu after the nyckelharpa
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "nyckelharpa" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "erhu")
end
