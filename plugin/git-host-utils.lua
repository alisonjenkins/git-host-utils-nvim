local git_utils = require("git-host-utils")

vim.api.nvim_create_user_command("GitHostUtils", function()
	local git_remotes = io.popen("git remote -v")
	local remotes_output = git_remotes:read("*a")
	git_remotes:close()

	-- check the number of remotes returned
	local remotes = git_utils.string.split(remotes_output, "\n")
	git_utils.debug.print_table(remotes)

	-- if more than one, prompt the user to select a remote

	-- extract the host from the remote url

	-- get the pull request url for that git host

	-- format the pull request url with the current branch name

	-- open the url in the user's default browser
end)
