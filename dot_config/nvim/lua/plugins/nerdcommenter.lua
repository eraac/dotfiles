-- Plugin to comment/uncomment lines easily

return {
    "preservim/nerdcommenter",
    config = function()
        vim.g.NERDCreateDefaultMappings = 1

        --  Add spaces after comment delimiters by default
        vim.g.NERDSpaceDelims = 1

        -- Use compact syntax for prettified multi-line comments
        vim.g.NERDCompactSexyComs = 1

        -- Enable trimming of trailing whitespace when uncommenting
        vim.g.NERDTrimTrailingWhitespace = 1
    end
}

-- Usage:
-- <leader>cc: Comment out the current line or text selected in visual mode
-- <leader>cn: Same as cc but forces nesting
-- <leader>cm: Comments the given lines using only one set of multipart delimiters
-- <leader>ci: Toggles the comment state of the selected line(s) individually
-- <leader>cs: Comments out the selected lines with a pretty block formatted layout

