-- Sound related constant data.

local _, WBT = ...;
local L = LibStub("AceLocale-3.0"):GetLocale(WBT.addon_name)

local Sound = {};
WBT.Sound = Sound;

Sound.SOUND_CLASSIC = "classic";
Sound.SOUND_FANCY = "fancy";

Sound.SOUND_FILE_DEFAULT = 567275; -- Wardrums

Sound.SOUND_KEY_BATTLE_BEGINS = "battle-begins";

--[[
    How to find IDs given the filename: use 'https://wow.tools/files' to search, either with filename or fileID

    k:
        the string which is displayed in GUI
    v:
        the fileID, needed in PlaySoundFile
]]--

Sound.sound_tbl = {
    keys = {
        option = "option",
        file_id = "file_id",
    },
    tbl = WBT.Util.MultiKeyTable:New({
        { option = L["DISABLED"],                    file_id = nil,     },
        { option = L["you-are-not-prepared"],        file_id = 552503,  },
        { option = L["prepare-yourselves"],          file_id = 547915,  },
        { option = L["alliance-bell"],               file_id = 566564,  },
        { option = L["alarm-clock"],                 file_id = 567399,  },
        { option = L[Sound.SOUND_KEY_BATTLE_BEGINS], file_id = 2128648, },
        { option = L["pvp-warning"],                 file_id = 567505,  },
        { option = L["drum-hit"],                    file_id = 1487139, },
    }),
};
