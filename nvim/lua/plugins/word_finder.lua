return {
    dir = "~/.config/nvim/lua/word_finder",
    name = "word_finder",
    config = function()
        require("word_finder").setup()
    end,
}
