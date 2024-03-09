 local sections = {
   ai = { desc = "󰁤" .. " AI/ML" },
   ai_inline = { desc = "Inline" },
   ai_whisper = { desc = "Whisper" },
 }

local maps = { n = {}, i = {}, v = {}, x = {}}

local ai_leader = "<C-M>"
local ai_wleader = "<Leader>A"

maps.n[ai_leader] = sections.ai
maps.i[ai_leader] = sections.ai
maps.v[ai_leader] = sections.ai

-- Leader items
maps.n[ai_wleader] = sections.ai
maps.v[ai_wleader] = sections.ai

maps.n[ai_leader .. "c"] = { "<cmd>GpChatNew<cr>", desc = "New Chat" }
maps.n[ai_leader .. "t"] = { "<cmd>GpChatToggle<cr>", desc = "Toggle Chat" }
maps.n[ai_leader .. "f"] = { "<cmd>GpChatFinder<cr>", desc = "Chat Finder" }

maps.n[ai_wleader .. "c"] = { "<cmd>GpChatNew<cr>", desc = "New Chat" }
maps.n[ai_wleader .. "t"] = { "<cmd>GpChatToggle<cr>", desc = "Toggle Chat" }
maps.n[ai_wleader .. "f"] = { "<cmd>GpChatFinder<cr>", desc = "Chat Finder" }

maps.i[ai_leader .. "c"] = { "<cmd>GpChatNew<cr>", desc = "New Chat" }
maps.i[ai_leader .. "t"] = { "<cmd>GpChatToggle<cr>", desc = "Toggle Chat" }
maps.i[ai_leader .. "f"] = { "<cmd>GpChatFinder<cr>", desc = "Chat Finder" }


maps.v[ai_leader .. "c"] = { ":<C-u>'<,'>GpChatNew<cr>", desc = "Visual Chat New" }
maps.v[ai_leader .. "p"] = { ":<C-u>'<,'>GpChatPaste<cr>", desc = "Visual Chat New" }
maps.v[ai_leader .. "t"] = { ":<C-u>'<,'>GpChatToggle<cr>", desc = "Visual Chat New" }

maps.n[ai_leader .. "<C-x>"] = { "<cmd>GpChatNew split<cr>", desc = "New Chat split" }
maps.n[ai_leader .. "<C-v>"] = { "<cmd>GpChatNew vsplit<cr>", desc = "New Chat vsplit" }
maps.n[ai_leader .. "<C-t>"] = { "<cmd>GpChatNew tabnew<cr>", desc = "New Chat tabnew" }

maps.n[ai_wleader .. "<C-x>"] = { "<cmd>GpChatNew split<cr>", desc = "New Chat split" }
maps.n[ai_wleader .. "<C-v>"] = { "<cmd>GpChatNew vsplit<cr>", desc = "New Chat vsplit" }
maps.n[ai_wleader .. "<C-t>"] = { "<cmd>GpChatNew tabnew<cr>", desc = "New Chat tabnew" }
maps.n[ai_wleader .. "<S-return>"] = { "<cmd>GpChatRespond<cr>", desc = "ChatRespond (ask for a query response)" }

maps.i[ai_leader .. "<C-x>"] = { "<cmd>GpChatNew split<cr>", desc = "New Chat split" }
maps.i[ai_leader .. "<C-v>"] = { "<cmd>GpChatNew vsplit<cr>", desc = "New Chat vsplit" }
maps.i[ai_leader .. "<C-t>"] = { "<cmd>GpChatNew tabnew<cr>", desc = "New Chat tabnew" }

maps.v[ai_leader .. "<C-x>"] = { ":<C-u>'<,'>GpChatNew split<cr>", desc = "New Chat split" }
maps.v[ai_leader .. "<C-v>"] = { ":<C-u>'<,'>GpChatNew vsplit<cr>", desc = "New Chat vsplit" }
maps.v[ai_leader .. "<C-t>"] = { ":<C-u>'<,'>GpChatNew tabnew<cr>", desc = "New Chat tabnew" }

maps.v[ai_wleader .. "x"] = { ":<C-u>'<,'>GpChatNew split<cr>", desc = "New Chat split" }
maps.v[ai_wleader .. "v"] = { ":<C-u>'<,'>GpChatNew vsplit<cr>", desc = "New Chat vsplit" }
maps.v[ai_wleader .. "t"] = { ":<C-u>'<,'>GpChatNew tabnew<cr>", desc = "New Chat tabnew" }

-- Prompt commands
maps.n[ai_leader .. "r"] = { "<cmd>GpRewrite<cr>", desc = "Inline Rewrite" }
maps.n[ai_leader .. "a"] = { "<cmd>GpAppend<cr>", desc = "Append (after)" }
maps.n[ai_leader .. "b"] = { "<cmd>GpPrepend<cr>", desc = "Prepend (before)" }

maps.n[ai_wleader .. "r"] = { "<cmd>GpRewrite<cr>", desc = "Inline Rewrite" }
maps.n[ai_wleader .. "a"] = { "<cmd>GpAppend<cr>", desc = "Append (after)" }
maps.n[ai_wleader .. "b"] = { "<cmd>GpPrepend<cr>", desc = "Prepend (before)" }

maps.i[ai_leader .. "r"] = { "<cmd>GpRewrite<cr>", desc = "Inline Rewrite" }
maps.i[ai_leader .. "a"] = { "<cmd>GpAppend<cr>", desc = "Append (after)" }
maps.i[ai_leader .. "b"] = { "<cmd>GpPrepend<cr>", desc = "Prepend (before)" }

maps.v[ai_leader .. "r"] = { ":<C-u>'<,'>GpRewrite<cr>", desc = "Visual Rewrite" }
maps.v[ai_leader .. "a"] = { ":<C-u>'<,'>GpAppend<cr>", desc = "Visual (after)" }
maps.v[ai_leader .. "b"] = { ":<C-u>'<,'>GpPrepend<cr>", desc = "Visual (before)" }
maps.v[ai_leader .. "i"] = { ":<C-u>'<,'>GpImplement<cr>", desc = "Implement selection" }

maps.v[ai_wleader .. "r"] = { ":<C-u>'<,'>GpRewrite<cr>", desc = "Visual Rewrite" }
maps.v[ai_wleader .. "a"] = { ":<C-u>'<,'>GpAppend<cr>", desc = "Visual (after)" }
maps.v[ai_wleader .. "b"] = { ":<C-u>'<,'>GpPrepend<cr>", desc = "Visual (before)" }
maps.v[ai_wleader .. "i"] = { ":<C-u>'<,'>GpImplement<cr>", desc = "Implement selection" }

maps.n[ai_leader .. "g"] = sections.ai_inline
maps.i[ai_leader .. "g"] = sections.ai_inline
maps.v[ai_leader .. "g"] = sections.ai_inline
-- Leader items
maps.n[ai_wleader .. "g"] = sections.ai_inline
maps.v[ai_wleader .. "g"] = sections.ai_inline

maps.n[ai_leader .. "gp"] = { "<cmd>GpPopup<cr>", desc = "Popup" }
maps.n[ai_leader .. "ge"] = { "<cmd>GpEnew<cr>", desc = "GpEnew" }
maps.n[ai_leader .. "gn"] = { "<cmd>GpNew<cr>", desc = "GpNew" }
maps.n[ai_leader .. "gv"] = { "<cmd>GpVnew<cr>", desc = "GpVnew" }
maps.n[ai_leader .. "gt"] = { "<cmd>GpTabnew<cr>", desc = "GpTabnew" }

maps.n[ai_wleader .. "gp"] = { "<cmd>GpPopup<cr>", desc = "Popup" }
maps.n[ai_wleader .. "ge"] = { "<cmd>GpEnew<cr>", desc = "GpEnew" }
maps.n[ai_wleader .. "gn"] = { "<cmd>GpNew<cr>", desc = "GpNew" }
maps.n[ai_wleader .. "gv"] = { "<cmd>GpVnew<cr>", desc = "GpVnew" }
maps.n[ai_wleader .. "gt"] = { "<cmd>GpTabnew<cr>", desc = "GpTabnew" }

maps.i[ai_leader .. "gp"] = { "<cmd>GpPopup<cr>", desc = "Popup" }
maps.i[ai_leader .. "ge"] = { "<cmd>GpEnew<cr>", desc = "GpEnew" }
maps.i[ai_leader .. "gn"] = { "<cmd>GpNew<cr>", desc = "GpNew" }
maps.i[ai_leader .. "gv"] = { "<cmd>GpVnew<cr>", desc = "GpVnew" }
maps.i[ai_leader .. "gt"] = { "<cmd>GpTabnew<cr>", desc = "GpTabnew" }

maps.v[ai_leader .. "gp"] = { ":<C-u>'<,'>GpPopup<cr>", desc = "Visual Popup" }
maps.v[ai_leader .. "ge"] = { ":<C-u>'<,'>GpEnew<cr>", desc = "Visual GpEnew" }
maps.v[ai_leader .. "gn"] = { ":<C-u>'<,'>GpNew<cr>", desc = "Visual GpNew" }
maps.v[ai_leader .. "gv"] = { ":<C-u>'<,'>GpVnew<cr>", desc = "Visual GpVnew" }
maps.v[ai_leader .. "gt"] = { ":<C-u>'<,'>GpTabnew<cr>", desc = "Visual GpTabnew" }

maps.v[ai_wleader .. "gp"] = { ":<C-u>'<,'>GpPopup<cr>", desc = "Visual Popup" }
maps.v[ai_wleader .. "ge"] = { ":<C-u>'<,'>GpEnew<cr>", desc = "Visual GpEnew" }
maps.v[ai_wleader .. "gn"] = { ":<C-u>'<,'>GpNew<cr>", desc = "Visual GpNew" }
maps.v[ai_wleader .. "gv"] = { ":<C-u>'<,'>GpVnew<cr>", desc = "Visual GpVnew" }
maps.v[ai_wleader .. "gt"] = { ":<C-u>'<,'>GpTabnew<cr>", desc = "Visual GpTabnew" }

maps.n[ai_leader .. "x"] = { "<cmd>GpContext<cr>", desc = "ToggleContext" }
maps.n[ai_wleader .. "x"] = { "<cmd>GpContext<cr>", desc = "ToggleContext" }
maps.i[ai_leader .. "x"] = { "<cmd>GpContext<cr>", desc = "ToggleContext" }

maps.v[ai_leader .. "x"] = { ":<C-u>'<,'>GpContext<cr>", desc = "ToggleContext" }
maps.v[ai_wleader .. "x"] = { ":<C-u>'<,'>GpContext<cr>", desc = "ToggleContext" }

maps.n[ai_leader .. "s"] = { "<cmd>GpStop<cr>", desc = "Stop" }
maps.n[ai_wleader .. "s"] = { "<cmd>GpStop<cr>", desc = "Stop" }
maps.i[ai_leader .. "s"] = { "<cmd>GpStop<cr>", desc = "Stop" }
maps.v[ai_leader .. "s"] = { "<cmd>GpStop<cr>", desc = "Stop" }
maps.v[ai_wleader .. "s"] = { "<cmd>GpStop<cr>", desc = "Stop" }
maps.x[ai_leader .. "s"] = { "<cmd>GpStop<cr>", desc = "Stop" }
maps.x[ai_wleader .. "s"] = { "<cmd>GpStop<cr>", desc = "Stop" }

maps.n[ai_leader .. "n"] = { "<cmd>GpNextAgent<cr>", desc = "Next Agent" }
maps.n[ai_wleader .. "n"] = { "<cmd>GpNextAgent<cr>", desc = "Next Agent" }
maps.i[ai_leader .. "n"] = { "<cmd>GpNextAgent<cr>", desc = "Next Agent" }
maps.v[ai_leader .. "n"] = { "<cmd>GpNextAgent<cr>", desc = "Next Agent" }
maps.v[ai_wleader .. "n"] = { "<cmd>GpNextAgent<cr>", desc = "Next Agent" }
maps.x[ai_leader .. "n"] = { "<cmd>GpNextAgent<cr>", desc = "Next Agent" }
maps.x[ai_wleader .. "n"] = { "<cmd>GpNextAgent<cr>", desc = "Next Agent" }

maps.n[ai_leader .. "w"] = sections.ai_whisper
maps.i[ai_leader .. "w"] = sections.ai_whisper
maps.v[ai_leader .. "w"] = sections.ai_whisper
-- Leader items
maps.n[ai_wleader .. "w"] = sections.ai_whisper
maps.v[ai_wleader .. "w"] = sections.ai_whisper

-- optional Whisper commands with prefix <C-g>w
maps.n[ai_leader .. "ww"] = { "<cmd>GpWhisper<cr>", desc = "Whisper" }
maps.n[ai_wleader .. "ww"] = { "<cmd>GpWhisper<cr>", desc = "Whisper" }
maps.i[ai_leader .. "ww"] = { "<cmd>GpWhisper<cr>", desc = "Whisper" }
maps.v[ai_leader .. "ww"] = { ":<C-u>'<,'>GpWhisper<cr>", desc = "Visual Whisper" }
maps.v[ai_wleader .. "ww"] = { ":<C-u>'<,'>GpWhisper<cr>", desc = "Visual Whisper" }

maps.n[ai_leader .. "wr"] = { "<cmd>GpWhisperRewrite<cr>", desc = "Whisper Inline Rewrite" }
maps.n[ai_wleader .. "wr"] = { "<cmd>GpWhisperRewrite<cr>", desc = "Whisper Inline Rewrite" }
maps.i[ai_leader .. "wr"] = { "<cmd>GpWhisperRewrite<cr>", desc = "Whisper Inline Rewrite" }
maps.v[ai_leader .. "wr"] = { ":<C-u>'<,'>GpWhisperRewrite<cr>", desc = "Visual Whisper Rewrite" }
maps.v[ai_wleader .. "wr"] = { ":<C-u>'<,'>GpWhisperRewrite<cr>", desc = "Visual Whisper Rewrite" }

maps.n[ai_leader .. "wa"] = { "<cmd>GpWhisperAppend<cr>", desc = "Whisper Append (after)" }
maps.n[ai_wleader .. "wa"] = { "<cmd>GpWhisperAppend<cr>", desc = "Whisper Append (after)" }
maps.i[ai_leader .. "wa"] = { "<cmd>GpWhisperAppend<cr>", desc = "Whisper Append (after)" }
maps.n[ai_leader .. "wa"] = { "<cmd>GpWhisperAppend<cr>", desc = "Whisper Append (after)" }
maps.v[ai_leader .. "wa"] = { ":<C-u>'<,'>GpWhisperAppend<cr>", desc = "Visual Whisper Append (after)" }
maps.v[ai_wleader .. "wa"] = { ":<C-u>'<,'>GpWhisperAppend<cr>", desc = "Visual Whisper Append (after)" }

maps.n[ai_leader .. "wb"] = { "<cmd>GpWhisperPrepend<cr>", desc = "Whisper Prepend (before)" }
maps.n[ai_wleader .. "wb"] = { "<cmd>GpWhisperPrepend<cr>", desc = "Whisper Prepend (before)" }
maps.i[ai_leader .. "wb"] = { "<cmd>GpWhisperPrepend<cr>", desc = "Whisper Prepend (before)" }
maps.v[ai_leader .. "wb"] = { ":<C-u>'<,'>GpWhisperPrepend<cr>", desc = "Visual Whisper Prepend (before)" }
maps.v[ai_wleader .. "wb"] = { ":<C-u>'<,'>GpWhisperPrepend<cr>", desc = "Visual Whisper Prepend (before)" }

maps.i[ai_leader .. "wp"] = { "<cmd>GpWhisperPopup<cr>", desc = "Whisper Popup" }
maps.i[ai_leader .. "we"] = { "<cmd>GpWhisperEnew<cr>", desc = "Whisper Enew" }
maps.i[ai_leader .. "wn"] = { "<cmd>GpWhisperNew<cr>", desc = "Whisper New" }
maps.i[ai_leader .. "wv"] = { "<cmd>GpWhisperVnew<cr>", desc = "Whisper Vnew" }
maps.i[ai_leader .. "wt"] = { "<cmd>GpWhisperTabnew<cr>", desc = "Whisper Tabnew" }

maps.v[ai_leader .. "wp"] = { ":<C-u>'<,'>GpWhisperPopup<cr>", desc = "Visual Whisper Popup" }
maps.v[ai_leader .. "we"] = { ":<C-u>'<,'>GpWhisperEnew<cr>", desc = "Visual Whisper Enew" }
maps.v[ai_leader .. "wn"] = { ":<C-u>'<,'>GpWhisperNew<cr>", desc = "Visual Whisper New" }
maps.v[ai_leader .. "wv"] = { ":<C-u>'<,'>GpWhisperVnew<cr>", desc = "Visual Whisper Vnew" }
maps.v[ai_leader .. "wt"] = { ":<C-u>'<,'>GpWhisperTabnew<cr>", desc = "Visual Whisper Tabnew" }

 return maps
