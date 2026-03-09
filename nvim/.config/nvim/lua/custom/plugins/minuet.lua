return {
  'milanglacier/minuet-ai.nvim', -- <--- ESTO ES LO QUE FALTA
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    require('minuet').setup {
      provider = 'openai_compatible',
      provider_options = {
        openai_compatible = {
          model = 'qwen2.5-coder-3b-instruct-mlx',
          end_point = 'http://192.168.1.167:1234/v1/chat/completions',
          stream = true,
          api_key = 'TERM',
        },
      },
      virtualtext = {
        auto_trigger_ft = { '*' },
        keymap = {
          -- accept whole completion
          --
          accept = '<Tab>',
          -- Otras teclas seguras que no chocan con AeroSpace o Tmux
          accept_line = '<C-l>',
          next = '<C-n>',
          prev = '<C-p>',
          dismiss = '<C-x>',
        },
      },
      trigger = { prefetch_on_insert = true },
      debounce = 200,
    }
  end,
}
