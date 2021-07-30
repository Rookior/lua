--Lua的包（package）使用require,只加载一次，dofile重新加载，建议使用require

local c= require("foo")
--c为table
print(c)   
print(c.foo(1,2))

print('\nrequire:')
for i=1,2 do
print(require("foo"))
end

print('\ndofile:')
for i=1,2 do
print(dofile("foo.lua"))
end