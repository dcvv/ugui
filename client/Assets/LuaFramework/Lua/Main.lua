--主入口函数。从这里开始lua逻辑
function Main()	
	local breakSocketHandle,debugXpCall = require("LuaDebugjit")("localhost",7003) --该端口 对应调试文件的端口
	local timer = Timer.New(function() 
	breakSocketHandle() end, 1, -1, false)
	timer:Start();
	print("logic start")	 		
end

--场景切换通知
function OnLevelWasLoaded(level)
	collectgarbage("collect")
	Time.timeSinceLevelLoad = 0
end

function OnApplicationQuit()
end