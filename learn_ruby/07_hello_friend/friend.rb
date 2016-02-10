class Friend
	def greeting(name="")
		a = name == "" ? "Hello!" : "Hello, #{name}!"
		a
	end
end