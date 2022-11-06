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

if Musician.INSTRUMENTS["square_wave"] == nil then
	Musician.INSTRUMENTS["square_wave"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\square-wave",
		decay = 25,
		isPercussion = false,
		midi = 80, -- Lead1Square
		loop = { 4, 5 },
		crossfade = 150,
		color = { 0.84 / 1.2, 0.39 / 1.2, 0.99 / 1.2 },
		source = "Oberheim OB-Xa"
	}

	-- Insert the square wave after the saw wave
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "saw_wave" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "square_wave")
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

if Musician.INSTRUMENTS["marimba"] == nil then
	Musician.INSTRUMENTS["marimba"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\marimba",
		decay = 1000,
		isPercussion = false,
		isPlucked = true,
		midi = 12, -- Marimba
		color = { 0.78 / 1.25, 0.61 / 1.25, 0.43 / 1.25 },
		source = "Marimbaphonic"
	}

	-- Insert the marimba before the percussions set
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "percussions" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i, "marimba")
end

if Musician.INSTRUMENTS["tubular_bells"] == nil then
	Musician.INSTRUMENTS["tubular_bells"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\tubular-bells",
		decay = 1000,
		isPercussion = false,
		isPlucked = true,
		midi = 14, -- TubularBells
		color = { 0.78 / 1.25, 0.61 / 1.25, 0.43 / 1.25 },
		source = "LABS Christmas"
	}

	-- Insert the tubular bells after the marimba
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "marimba" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "tubular_bells")
end

if Musician.INSTRUMENTS["synth_bass"] == nil then
	Musician.INSTRUMENTS["synth_bass"] = {
		path = "Interface\\AddOns\\MusicianExtended\\instruments\\synth-bass",
		decay = 75,
		isPercussion = false,
		isPlucked = true,
		midi = 38, -- SynthBass1
		color = { 0.58 / 1.5, 0.51 / 1.5, 0.79 / 1.5 },
		source = "Yamaha DX7"
	}

	-- Insert the synth bass after the bass guitar
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "bass_guitar" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "synth_bass")
end

if Musician.INSTRUMENTS["electronic_drumkit"] == nil then
	Musician.INSTRUMENTS["electronic_drumkit"] = {
		decay = 100,
		regions = {
			{
				path = "Interface\\AddOns\\Musician\\instruments\\drumkit",
				loKey = 12,
				hiKey = 34,
			},
			{
				path = "Interface\\AddOns\\MusicianExtended\\instruments\\electronic-drumkit",
				loKey = 35,
				hiKey = 57,
			},
			{
				path = "Interface\\AddOns\\Musician\\instruments\\drumkit",
				loKey = 58,
				hiKey = 58,
			},
			{
				path = "Interface\\AddOns\\MusicianExtended\\instruments\\electronic-drumkit",
				loKey = 59,
				hiKey = 59,
			},
			{
				path = "Interface\\AddOns\\Musician\\instruments\\drumkit",
				loKey = 60,
				hiKey = 61,
			},
			{
				path = "Interface\\AddOns\\MusicianExtended\\instruments\\electronic-drumkit",
				loKey = 62,
				hiKey = 64,
			},
			{
				path = "Interface\\AddOns\\Musician\\instruments\\drumkit",
				loKey = 65,
				hiKey = 69,
			},
			{
				path = "Interface\\AddOns\\MusicianExtended\\instruments\\electronic-drumkit",
				loKey = 70,
				hiKey = 70,
			},
			{
				path = "Interface\\AddOns\\Musician\\instruments\\drumkit",
				loKey = 71,
				hiKey = 74,
			},
			{
				path = "Interface\\AddOns\\MusicianExtended\\instruments\\electronic-drumkit",
				loKey = 75,
				hiKey = 75,
			},
			{
				path = "Interface\\AddOns\\Musician\\instruments\\drumkit",
				loKey = 76,
				hiKey = 108,
			},
		},
		decayByKey = {
			[27] = 35,
			[28] = 211,
			[29] = 130,
			[30] = 125,
			[31] = 141,
			[32] = 2,
			[33] = 63,
			[34] = 1000,

			[35] = 246,
			[36] = 147,
			[37] = 156,
			[38] = 348,
			[39] = 417,
			[40] = 248,
			[41] = 596,
			[42] = 195,
			[43] = 647,
			[44] = 395,
			[45] = 443,
			[46] = 578,
			[47] = 446,
			[48] = 446,
			[49] = 1000,
			[50] = 470,
			[51] = 688,
			[52] = 610,
			[53] = 997,
			[54] = 150,
			[55] = 546,
			[56] = 547,
			[57] = 1000,

			[58] = 1000,

			[59] = 646,

			[60] = 238,
			[61] = 134,

			[62] = 247,
			[63] = 278,
			[64] = 510,

			[65] = 1000,
			[66] = 1000,
			[67] = 603,
			[68] = 894,
			[69] = 114,

			[70] = 52,

			[71] = 486,
			[72] = 505,
			[73] = 143,
			[74] = 276,

			[75] = 97,

			[76] = 108,
			[77] = 145,
			[78] = 156,
			[79] = 169,
			[80] = 89,
			[81] = 1000,
			[82] = 60,
			[83] = 1000,
			[84] = 1000,
			[85] = 128,
			[86] = 248,
			[87] = 1000,
		},
		isPercussion = false,
		isPlucked = true,
		midi = 153, -- TR808Kit
		color = { 0.77 / 1.5, 0.12 / 1.5, 0.23 / 1.5 },
		source = "Roland TR-909"
	}

	-- Insert the electronic drum kit after the standard drum kit
	local i = 1
	while Musician.INSTRUMENTS_AVAILABLE[i] ~= "drumkit" and i <= #Musician.INSTRUMENTS_AVAILABLE do i = i + 1 end
	table.insert(Musician.INSTRUMENTS_AVAILABLE, i + 1, "electronic_drumkit")
end
