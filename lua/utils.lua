local M = {}
--- Resolve the options table for a given plugin with lazy
---@param plugin string The plugin to search for
---@return table opts # The plugin options
function M.plugin_opts(plugin)
	local lazy_config_avail, lazy_config = pcall(require, "lazy.core.config")
	local lazy_plugin_avail, lazy_plugin = pcall(require, "lazy.core.plugin")
	local opts = {}
	if lazy_config_avail and lazy_plugin_avail then
		local spec = lazy_config.spec.plugins[plugin]
		if spec then
			opts = lazy_plugin.values(spec, "opts")
		end
	end
	return opts
end

return M
