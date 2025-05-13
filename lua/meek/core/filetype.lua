vim.filetype.add({
    extension = {
        twig = "twig",
    },
    filename = {
        ["html.twig"] = "twig",
    },
    pattern = {
        [".+%.html%.twig$"] = "twig",
    },
})
