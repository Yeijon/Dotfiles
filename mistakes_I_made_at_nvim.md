
当我配置文件时候：

```bash
no field package.preload['lua.option']
no file '.lua\option.lua'
no file 'C:\Users\Administrator\scoop\apps\neovim\current\bin\lua\lua\option.lua'
...
traceback:
[C]: in function 'require'
C:\Users\Administator\AppData\Local\nvim\init.lua:10: in main chunk
```

原因是因为nvim无法在runtimepath中寻找到'lua.option.lua'文件，这个错误发生在当我离开vim.fn.stdpath('config')所在的文件(ps: on Win, it's AppData\Local\nvim; `:echo stadpath('config')` to find)去操作nvim时候，就会报错。

这太奇怪了，感谢 https://www.reddit.com/r/neovim/comments/hd8heg/neovim_initvim_config_file_location_on_windows/ 让我找到了问题的解决方法，应该是nvim默认会进入lua文件夹中寻找，但是我又'lua.option'相当于在lua/lua中寻找，nvim误会了我的意思造成的
