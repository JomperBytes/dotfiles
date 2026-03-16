return {
  'milanglacier/minuet-ai.nvim', --
  enabled = false,
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    require('minuet').setup {
      provider = 'openai_compatible',
      provider_options = {
        openai_compatible = {
          model = 'qwen2.5-coder-3b-instruct-mlx',
          end_point = 'http://192.168.1.20:1234/v1/chat/completions',
          stream = true,
          api_key = 'TERM',
        },
      },
      virtualtext = {
        auto_trigger_ft = { '*' },
        keymap = {
          accept = '<C-y>', -- Control + y (Mucho más seguro que Option)
          accept_line = '<C-l>', -- Control + l
          next = '<C-n>', -- Control + n
          prev = '<C-p>', -- Control + p
          dismiss = '<C-e>', -- Control + e
        },
      },
      trigger = { prefetch_on_insert = true },
      debounce = 200,
    }
  end,
}
