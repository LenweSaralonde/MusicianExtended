--- Extended module
-- @module MusicianExtended

MusicianExtended = LibStub("AceAddon-3.0"):NewAddon("MusicianExtended")

local MODULE_NAME = "Extended"
Musician.AddModule(MODULE_NAME)

--- Get full version string
-- Version string contains actual addon version and protocol version
-- @return versionAndProtocol (string)
local hookedMusicianRegistryGetVersionString = Musician.Registry.GetVersionString
function Musician.Registry.GetVersionString()
	return hookedMusicianRegistryGetVersionString() .. "\n" ..
		"MusicianExtended " .. GetAddOnMetadata("MusicianExtended", "Version")
end

--- Return player tooltip text
-- @param player (string)
-- @return infoText (string)
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
	local versionRows = { string.split('\n', versionString) }
	for _, row in pairs(versionRows) do
		local pluginName, pluginVersion = string.split(' ', row)
		if pluginName == "MusicianExtended" then
			tooltipText = string.gsub(tooltipText, "Musician", "Musician: Extended")
			return tooltipText .. " x " .. pluginVersion
		end
	end

	return tooltipText
end
