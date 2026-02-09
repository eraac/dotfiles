return {
    "hashivim/vim-terraform",
    config = function()
        -- Allow vim-terraform to automatically format *.tf and *.tfvars files with terraform fmt
        vim.g.terraform_fmt_on_save = 1 -- or :TerraformFmt
    end
}

