--- Extended module
-- @module MusicianExtended

MusicianExtended = LibStub("AceAddon-3.0"):NewAddon("MusicianExtended")

local MODULE_NAME = "Extended"
Musician.AddModule(MODULE_NAME)

local GetAddOnMetadata = C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata

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

-- Enlarge required cache size
--
if Musician.Utils.GetSoundCacheSize then
	local hookedMusicianUtilsGetSoundCacheSize = Musician.Utils.GetSoundCacheSize
	function Musician.Utils.GetSoundCacheSize()
		return hookedMusicianUtilsGetSoundCacheSize() + MusicianExtended.SOUND_CACHE_SIZE
	end
end