--- Extended module
-- @module MusicianExtended

MusicianExtended = LibStub("AceAddon-3.0"):NewAddon("MusicianExtended")

local MODULE_NAME = "Extended"
Musician.AddModule(MODULE_NAME)

--- OnInitialize
--
function MusicianExtended:OnInitialize()
	-- Fix audio settings
	Musician.Utils.AdjustAudioSettings()
end

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

-- Enlarge required cache size
--
if Musician.Utils.GetSoundCacheSize then
	local hookedMusicianUtilsGetSoundCacheSize = Musician.Utils.GetSoundCacheSize
	function Musician.Utils.GetSoundCacheSize()
		return hookedMusicianUtilsGetSoundCacheSize() + MusicianExtended.SOUND_CACHE_SIZE
	end
end