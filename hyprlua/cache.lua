local M = {}

function M.dir()
	return os.getenv('HOME') .. '/.cache/hypr'
end

function M.ensure_dir()
	local dir = M.dir()
	os.execute('mkdir -p ' .. dir)
	return dir
end

function M.path(name)
	if name and name ~= '' then
		return M.dir() .. '/' .. name
	end
end

return M
