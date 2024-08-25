require("CopilotChat").setup {
  debug = true, -- Enable debugging
  -- See Configuration section for rest
}

_G.copilotchat_quick_chat = function()
  local input = vim.fn.input("Quick Chat: ")
  if input ~= "" then
    require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
  end
end
