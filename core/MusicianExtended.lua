--- Extended module
-- @module MusicianExtended

MusicianExtended = LibStub("AceAddon-3.0"):NewAddon("MusicianExtended")

local MODULE_NAME = "Extended"
Musician.AddModule(MODULE_NAME)

local SAMPLE_FILE_EXT = ".ogg"

-- Append MusicianExtended version in the global version string
--
local hookedMusicianRegistryGetVersionString = Musician.Registry.GetVersionString
function Musician.Registry.GetVersionString()
	return hookedMusicianRegistryGetVersionString() .. " " ..
		"MusicianExtended=" .. GetAddOnMetadata("MusicianExtended", "Version")
end

-- Add the MusicianExtended version in the player tooltip
--
local hookedMusicianRegistryGetPlayerTooltipText = Musician.Registry.GetPlayerTooltipText
function Musician.Registry.GetPlayerTooltipText(player)
	local tooltipText = hookedMusicianRegistryGetPlayerTooltipText(player)

	if tooltipText == nil then
		return nil
	end

	-- Get player full version string, if any
	player = Musician.Utils.NormalizePlayerName(player)

	local versionString = Musician.Registry.players[player].version

	if not versionString then
		return tooltipText
	end

	-- Return tooltip text with Extended version, if found
	local versionRows = { string.split(' ', versionString) }
	for _, row in pairs(versionRows) do
		local pluginName, pluginVersion = string.split('=', row)
		if pluginName == "MusicianExtended" then
			-- Only keep version-related characters to avoid escape sequences injection
			pluginVersion = string.gsub(pluginVersion, "[^0-9a-zA-Z%.%-%_]+", "")
			tooltipText = string.gsub(tooltipText, "Musician", "Musician: Extended")
			return tooltipText .. " x " .. pluginVersion
		end
	end

	return tooltipText
end

--- Get the full path to the note release file.
-- @param path (string) Path to the note release samples
-- @param key (int) MIDI key
-- @return soundFile (string)
local function getNoteReleaseFilename(path, key)
	local noteName = Musician.Sampler.NoteName(key)
	return path .. "\\" .. noteName .. SAMPLE_FILE_EXT
end

-- Preload note release samples
--
hooksecurefunc(Musician.Preloader, "PreloadNote", function(instrument, key)
	local _, instrumentData, _ = Musician.Sampler.GetSoundFile(instrument, key)
	if instrumentData.release then
		local soundFile = getNoteReleaseFilename(instrumentData.release, key)
		local play, handle = PlaySoundFile(soundFile, "Master")
		if play then
			StopSound(handle, 0)
		end
	end
end)

-- Handle note release
--
local noteReleases = {}

local hookedMusicianSamplerPlayNote = Musician.Sampler.PlayNote
function Musician.Sampler.PlayNote(instrument, key, loopNote, track, player)
	local handleId, willPlay = hookedMusicianSamplerPlayNote(instrument, key, loopNote, track, player)
	if willPlay and handleId and handleId >= 0 then
		local _, instrumentData = Musician.Sampler.GetSoundFile(instrument, key)
		if instrumentData.release then
			noteReleases[handleId] = {
				getNoteReleaseFilename(instrumentData.release, key),
				instrumentData.releaseDecay
			}
		end
	end
	return handleId, willPlay
end

hooksecurefunc(Musician.Sampler, "StopNote", function(handleId, decay)
	if handleId and handleId >= 0 and noteReleases[handleId] then
		local releaseSampleFile = noteReleases[handleId][1]
		local releaseDecay = noteReleases[handleId][2]
		noteReleases[handleId] = nil

		-- Zero decay: don't play decay sample
		if decay == 0 then
			return
		end

		-- Play decay sample using the first available sound channel
		local audioChannels = Musician_Settings.audioChannels

		local soundHandle, willPlay, channel
		if audioChannels.Master then
			channel = "Master"
			willPlay, soundHandle = PlaySoundFile(releaseSampleFile, channel)
		end
		if not willPlay and audioChannels.SFX then
			channel = "SFX"
			willPlay, soundHandle = PlaySoundFile(releaseSampleFile, channel)
		end
		if not willPlay and audioChannels.Dialog then
			channel = "Dialog"
			willPlay, soundHandle = PlaySoundFile(releaseSampleFile, channel)
		end
		if willPlay then
			Musician.Utils.Debug("Sampler", "StopNote", "Play release sample", handleId, channel, releaseSampleFile)
			C_Timer.After(0, function() StopSound(soundHandle, releaseDecay) end)
		end
	end
end)