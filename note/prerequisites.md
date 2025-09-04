



## luarocks

```shell
curl -sL https://raw.githubusercontent.com/luarocks/hererocks/master/hererocks.py -o hererocks.py
python3 hererocks.py ~/.local/luarocks -l 5.1 -r latest  # 指定 Lua 5.1 版本
# 编译新版 lua 可能需要  yum install readline-devel
echo 'export PATH="$HOME/.local/luarocks/bin:$PATH"' >> ~/.bashrc
echo 'export LUA_PATH="$HOME/.local/luarocks/share/lua/5.1/?.lua;$HOME/.local/luarocks/share/lua/5.1/?/init.lua;$LUA_PATH"' >> ~/.bashrc
echo 'export LUA_CPATH="$HOME/.local/luarocks/lib/lua/5.1/?.so;$LUA_CPATH"' >> ~/.bashrc
```

