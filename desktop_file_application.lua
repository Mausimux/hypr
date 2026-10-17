local function shell_quote(value)
	return "'" .. value:gsub("'", "'\\''") .. "'"
end

local function application_dirs()
	local dirs = {}

	local data_home = os.getenv('XDG_DATA_HOME')
	if not data_home or data_home == '' then
		local home = os.getenv('HOME')
		if home then
			data_home = home .. '/.local/share'
		end
	end
	if data_home then
		dirs[#dirs + 1] = data_home .. '/applications'
	end

	local data_dirs = os.getenv('XDG_DATA_DIRS')
	if not data_dirs or data_dirs == '' then
		data_dirs = '/usr/local/share:/usr/share'
	end
	for dir in data_dirs:gmatch('[^:]+') do
		dirs[#dirs + 1] = dir .. '/applications'
	end

	return dirs
end

return function(name)
	return function()
		local pattern = shell_quote('Name=' .. name)

		for _, dir in ipairs(application_dirs()) do
			local pipe = io.popen(
				"grep -rFxl --include='*.desktop' " .. pattern .. ' ' .. shell_quote(dir) .. ' 2>/dev/null'
			)
			if pipe then
				local path = pipe:read('l')
				pipe:close()
				if path then
					local result = 'dex ' .. shell_quote(path)
					return result
				end
			end
		end
	end
end
