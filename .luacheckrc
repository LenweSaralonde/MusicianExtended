max_line_length = false

exclude_files = {
}

ignore = {
	-- Ignore global writes/accesses/mutations on anything prefixed with "Musician".
	-- This is the standard prefix for all of our global frame names and mixins.
	"11./^Musician",

	-- Ignore unused self. This would popup for Mixins and Objects
	"212/self",
}

globals = {
	"Musician",
	"MusicianExtended",

	-- Globals

	-- AddOn Overrides
}

read_globals = {
	-- Libraries
	"LibStub",

	-- 3rd party add-ons
}

std = "lua51+wow"

stds.wow = {
	-- Globals that we mutate.
	globals = {
	},

	-- Globals that we access.
	read_globals = {
		-- Lua function aliases and extensions

		string = {
			fields = {
				"split",
			},
		},

		-- Global Functions
		"GetAddOnMetadata",
		"hooksecurefunc",
		"PlaySoundFile",
		"StopSound",

		-- Global Mixins and UI Objects
		C_Timer = {
			fields = {
				"After"
			}
		},

		-- Global Constants
	},
}
