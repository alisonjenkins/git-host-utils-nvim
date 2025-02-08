local git_utils = {}

git_utils.string = {}
function git_utils.string.split(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t = {}
	for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
		table.insert(t, str)
	end
	return t
end

git_utils.debug = {}
function git_utils.debug.print_table(t)
	for k, v in pairs(t) do
		print(k, v)
	end
end

return git_utils
