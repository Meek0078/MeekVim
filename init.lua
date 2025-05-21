local original_notify = vim.notify

vim.notify = function(msg, level, opts)
  if type(msg) == "string" and msg:match("tsserver is deprecated") then
    return
  end
  original_notify(msg, level, opts)
end

require("meek.core")
require("meek.lazy")
