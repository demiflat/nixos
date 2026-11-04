local DISP1 = "DP-1"
local DISP2 = "DP-2"
-- hl.workspace_rule({ workspace = 1, monitor = DISP1, persistent = true, default = true, on_created_empty = "firefox" })
-- hl.workspace_rule({ workspace = 1, monitor = DISP1, persistent = true, default = true })
hl.on("workspace.created", function(ws)
  if ws.name == "1" then
    hl.exec_cmd("firefox")
  end
end)
hl.workspace_rule({ workspace = 3, monitor = DISP1, persistent = true })
hl.workspace_rule({ workspace = 5, monitor = DISP1, persistent = true })
hl.workspace_rule({ workspace = 7, monitor = DISP1, persistent = true })
hl.workspace_rule({ workspace = 9, monitor = DISP1, persistent = true })

hl.workspace_rule({ workspace = 2, monitor = DISP2, persistent = true, default = true })
hl.workspace_rule({ workspace = 4, monitor = DISP2, persistent = true })
hl.workspace_rule({ workspace = 6, monitor = DISP2, persistent = true })
hl.workspace_rule({ workspace = 8, monitor = DISP2, persistent = true })
hl.workspace_rule({ workspace = 10, monitor = DISP2, persistent = true })
