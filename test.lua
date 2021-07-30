print("hello world")
--值和类型：Number,String,Boolean
a = 1
print(a)

--最常用类型Table=数组+映射
--数组没有类型限制，数组下标从1开始，只要下标+1就可以正确扩充


a={}
a["hello"] = 2
a[2] = 20
a[3] = "hello"

print(a.hello,a[2],a[3])

--Lua函数,关键字function,return，end,可以多返回值
function add(a,b)
return a+b,a-b
end
print(add(1,2))

--[[
--这种函数写法也可以
bb = function(a,b)
return a+b
end
print(bb(1,2))
--]] 

--多变量赋值
a,b = 1,2
a,b = b,a
print(a,b)

--Lua表达式
--没有++这个语法，只能写c = c+1，字符串拼接用..不是用+
print((b+2)*3)
print(true and false)
print(true or false)
print("hello" .. "world")

--使用local关键字实现局部变量,值为nil，尽量使用local
function foo()
local c = 1
end
foo()
print(c)

--流程控制If 和 While  
--回家时候买1kg包子，如果看到买西瓜的就买一个
--[[
if foundWatermelon() then
buy("包子","1")
else
buy("包子","1kg")
end
--]] 

--[[
local i=0;
while(i<10) do
print(i)
i= i +1
end
--]] 


--For数值遍历 ：开始值,结束值,可省略的1 ， 结果为0-10

for i=0,10,1 do
print(i)
end

for i=10,1,-1 do
print(i)
end

print("------------------------------------")

--For泛型遍历, pairs为内置函数，可以将table全部遍历出来（没有顺序保证）,  ipairs只遍历数组  ，迭代器

temp = {
	["foo"] = 1,
	[100] = true,
	
	[1] = 20,
	[2] = 30,
}
for k,v in ipairs(temp) do
print(k,v)
end


--Lua系统库

print("------------------------------------")

local t = {}
for i=1,10 do
table.insert(t,i)
end

for k,v in pairs(table) do
print (k,v)
end

--数组删除使用table.remove
table.remove(t,2)
for k,v in pairs(t) do
print (k,v)
end

--映射删除 赋值为nil
local p = {}
p.a = 1
p.b = 2

p.a = nil
for k,v in pairs(p) do
print (k,v)
end

--获取长度使用#,获取类型使用type,类型转换函数tonumber,tostring,格式化方法string.format
print(#t)
print(type(t))
local num = tostring(3.14)
print(num,type(num))
print(string.format("hi %d",2))



































