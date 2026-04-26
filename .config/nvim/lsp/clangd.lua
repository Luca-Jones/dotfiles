return {
    cmd = {
        "clangd",
		"--enable-config",
        "--query-driver=/home/luca/.espressif/tools/**/*-elf-g*",
    },
    filetypes = { "c", "cpp", "objc", "objcpp" },
}
