--- GLOBALS

G.C.STK = {
    POWERUP = HEX("34D1F9"),
    POWERUP2 = HEX("4E93EE"),
    TIMEWARP = HEX("FF6E00"),
    TIMEWARP2 = HEX("3C3C3C"),
    TRANSPARENT = HEX("00000000")
}

-- Hooks

local loc_colour_ref = loc_colour
function loc_colour(_c, _default)
    if not G.ARGS.LOC_COLOURS then
        loc_colour_ref()
    end
    G.ARGS.LOC_COLOURS.sj_powerup = G.C.STK.POWERUP
    G.ARGS.LOC_COLOURS.sj_powerup2 = G.C.STK.POWERUP2
    G.ARGS.LOC_COLOURS.sj_timewarp = G.C.STK.TIMEWARP
    G.ARGS.LOC_COLOURS.sj_timewarp2 = G.C.STK.TIMEWARP2
    G.ARGS.LOC_COLOURS.sj_transparent = G.C.STK.TRANSPARENT
    return loc_colour_ref(_c, _default)
end