if Musician.INSTRUMENTS["pipe_organ"] == nil then
	Musician.INSTRUMENTS["pipe_organ"] = {
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
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "pipe_organ")
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
		releaseSustain = 1000,
		releaseDecay = 1000,
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

if Musician.INSTRUMENTS["saxophone"] == nil then
	Musician.INSTRUMENTS["saxophone"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\saxophone",
		decay = 100,
		isPercussion = false,
		midi = 65, -- AltoSax
		loop = { 4, 5 },
		crossfade = 150,
		color = { 1.00 / 1.25, 0.96 / 1.25, 0.41 / 1.25 },
		source = "Saxophia"
	}

	-- Insert the saxophone after the bassoon
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "bassoon" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "saxophone")
end

if Musician.INSTRUMENTS["saw_wave"] == nil then
	Musician.INSTRUMENTS["saw_wave"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\saw-wave",
		decay = 25,
		isPercussion = false,
		midi = 81, -- Lead2Sawtooth
		loop = { 4, 5 },
		crossfade = 150,
		color = { 0.84, 0.39, 0.99 },
		source = "Oberheim OB-Xa"
	}

	-- Insert the saw wave after the bass guitar
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "bass_guitar" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "saw_wave")
end

if Musician.INSTRUMENTS["electric_organ"] == nil then
	Musician.INSTRUMENTS["electric_organ"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\electric-organ",
		decay = 25,
		isPercussion = false,
		midi = 18, -- RockOrgan
		loop = { 4, 5 },
		crossfade = 150,
		color = { 0.85 * .8, 0.95 * .8, 1 },
		source = "Hammond B3"
	}

	-- Insert the electric organ after the pipe organ
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "pipe_organ" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "electric_organ")
end

if Musician.INSTRUMENTS["oboe"] == nil then
	Musician.INSTRUMENTS["oboe"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\oboe",
		decay = 150,
		isPercussion = false,
		midi = 68, -- Oboe
		loop = { 4, 5 },
		crossfade = 150,
		color = { 0.67 / 1.25, 0.83 / 1.25, 0.45 / 1.25 },
		source = "VSCO2 Oboe"
	}

	-- Insert the oboe after the clarinet
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "clarinet" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "oboe")
end
