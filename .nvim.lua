local cwd = vim.fn.getcwd()

vim.env.DATABASE_URL = "sqlite://" .. cwd .. "/db.sqlite3"
print(".nvim.lua: $DATABASE_URL: " .. vim.env.DATABASE_URL)
