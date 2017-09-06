-- Copyright (c) 2017, Fmohican
-- Romanizer for Aegisub

local tr = aegisub.gettext

script_name = tr"Romanizer"
script_description = tr"Replace old diacritics with new one"
script_author = "Fmohican"
script_version = "1"

function romanizer(subs, sel)
    for _, i in ipairs(sel) do
        local line = subs[i]
        line.text = line.text:gsub("Þ", "Ț")
        line.text = line.text:gsub("º", "ș")
        line.text = line.text:gsub("þ", "ț")
        line.text = line.text:gsub("ª", "Ș")
        line.text = line.text:gsub("ã", "ă")
        line.text = line.text:gsub("Ã", "Ă")
        subs[i] = line
    end
    aegisub.set_undo_point(tr"Romanizer")
end

aegisub.register_macro(script_name, script_description, romanizer)
