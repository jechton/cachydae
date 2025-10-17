-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- themes
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  -- superior to astronvim's built-in, highlights more types of colors (rgb, hsl)
  { import = "astrocommunity.color.nvim-highlight-colors" },
  -- tiny plugin to enhance nvim's native comments
  { import = "astrocommunity.comment.ts-comments-nvim" },
  -- inspired by the error lens extension in vscode
  { import = "astrocommunity.diagnostics.error-lens-nvim" },
  -- rainbow delimiters
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
  -- open files that need sudo
  { import = "astrocommunity.editing-support.suda-vim" },
  -- replace nvim-autopairs with ultimate-autopair.nvim
  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  -- movement binds like vscode has, using Alt-j/k/h/l
  { import = "astrocommunity.editing-support.vim-move" },
  -- edit your filesystem like a buffer
  { import = "astrocommunity.file-explorer.oil-nvim" },
  -- stops inactive lsp clients
  { import = "astrocommunity.lsp.garbage-day-nvim" },
  -- make typescript errors make sense
  { import = "astrocommunity.lsp.ts-error-translator-nvim" },
  { import = "astrocommunity.markdown-and-latex.markview-nvim" },
  -- change delimiters
  { import = "astrocommunity.motion.nvim-surround" },
  -- move by subwords
  { import = "astrocommunity.motion.nvim-spider" },
  -- smooth scrolling
  { import = "astrocommunity.scrolling.mini-animate" },
  -- disables search highlighting when you are done
  { import = "astrocommunity.syntax.vim-cool" },
  -- syntax highlight function arguments
  { import = "astrocommunity.syntax.hlargs-nvim" },
  -- open files and command output from terminals in your current instance
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  -- dim unused functions, variables, params, & more like VSCode
  { import = "astrocommunity.utility.neodim" },
  -- replace UI for messages, cmdline, popupmenu
  { import = "astrocommunity.utility.noice-nvim" },
  -- language packs
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.just" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.chezmoi" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.mdx" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
}
