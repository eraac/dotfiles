-- Easy way to browse the tags of the current file

return {
    "preservim/tagbar",
    keys = {
        { "<F8>", ":TagbarToggle<CR>", desc = "Toggle TagBar" },
    },
    config = function()
        vim.g.tagbar_type_terraform = {
            ctagstype = 'terraform',
            kinds = {
                'r:Resource',
                'R:Resource',
                'd:Data',
                'D:Data',
                'v:Variable',
                'V:Variable',
                'p:Provider',
                'P:Provider',
                'm:Module',
                'M:Module',
                'o:Output',
                'O:Output',
                'f:TFVar',
                'F:TFVar'
            }
        }
    end
}

