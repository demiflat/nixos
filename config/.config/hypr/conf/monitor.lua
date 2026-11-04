local MON0 = "DP-1"
local MON1 = "DP-2"

-- hl.monitor({ output = "DP-2", mode = "2560x1440@240", position = "0x0", scale = 1 })
-- hl.monitor({ output = "DP-3", mode = "2560x1440@240", position = "2560x0", scale = 1 })
-- hl.monitor({ output = MON0, mode = "preferred", position = "0x0", scale = 1 })
-- hl.monitor({ output = MON1, mode = "preferred", position = "2560x0", scale = 1 })
hl.monitor({ output = "DP-1", mode = "preferred", position = "0x0", scale = 1 })
hl.monitor({ output = "DP-2", mode = "preferred", position = "2560x0", scale = 1 })
-- nighttime?:
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "0x0", scale = 1, bitdepth = 10, cm = "hdredid" })
-- hl.monitor({ output = "DP-3", mode = "preferred", position = "2560x0", scale = 1, bitdepth = 10, cm = "hdredid" })
