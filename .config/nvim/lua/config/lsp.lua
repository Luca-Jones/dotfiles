vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    callback = function()
        local mason_pkg = vim.fn.expand("~/.local/share/nvim/mason/packages/jdtls")
        local jar = vim.fn.glob(mason_pkg .. "/plugins/org.eclipse.equinox.launcher_*.jar")
        local workspace = vim.fn.expand("~/.local/share/nvim/jdtls-workspace/")
            .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
        require("jdtls").start_or_attach({
            cmd = {
                "java",
                "-jar", jar,
                "-configuration", mason_pkg .. "/config_linux",
                "-data", workspace,
            },
            root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),
        })
    end,
})

vim.lsp.config(
    "*",
    {
        capabilities = require("blink.cmp").get_lsp_capabilities(),
    }
)

vim.diagnostic.config({ virtual_text = true })
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float()
    end,
})