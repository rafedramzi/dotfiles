require('telescope').setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

-- You can override the file & generic sorter by default simply by adding
require('telescope').load_extension('fzy_native')

