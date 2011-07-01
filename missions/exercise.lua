--[[
  EXERCISE: Monkey-patching strings

  With all you have learnt now, you should be able to do this exercise

  Add the necessary code below so that the test at the end passes

]]

-- INSERT YOUR CODE HERE

function string.starts_with(str, test)
   local good = true
   for i = 1, #test do
      if str[i] ~= test[i] then
	 good = false
	 break
      end
   end
   return good
end

function string.ends_with(str, test)
   local good = true
   for i = 1, #test do
      if str[#str-i+1] ~= test[#test-i+1] then
	 good = false
	 break
      end
   end
   return good
end

-- END OF CODE INSERT

function test_starts_with()
  local str = "Lua is awesome"

  assert_true(str:starts_with("L"))
  assert_true(str:starts_with("Lua"))
  assert_true(str:starts_with("Lua is"))
end

function test_ends_with()
  local str = "Lua is awesome"

  assert_true(str:ends_with("e"))
  assert_true(str:ends_with("some"))
  assert_true(str:ends_with("awesome"))
end

-- hint: string == getmetatable("").__index








