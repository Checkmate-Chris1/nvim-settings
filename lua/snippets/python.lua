local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = require('luasnip').insert_node
local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt

local function if_name_main()
  return {
    t {
      'def main():',
      '\t',
    },
    i(0, 'pass'),
    t {
      '',
      '',
      '',
      "if __name__ == '__main__':",
      '\tmain()',
    },
  }
end

return {
  --s('ifmain', if_name_main()),
  s('main', if_name_main()),
}
