return {

  {
    "folke/snacks.nvim",
    keys = {
      {
        "-",
        function()
          Snacks.explorer()
        end,
        desc = "File Explorer",
      },
    },
  },
  -- 表格对齐插件 Tabularize
  {
    "godlygeek/tabular",
    cmd = "Tabularize", -- 仅在执行 Tabularize 命令时加载
    -- 无额外配置，使用默认设置
  },

  -- Diff 增强插件
  {
    "chrisbra/vim-diff-enhanced",
    event = "VeryLazy", -- 延迟加载
    -- 无额外配置，使用默认设置
  },
}
