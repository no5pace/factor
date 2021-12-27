io.write("Factor Calculator\n\n")
local showMult = true
local num

while true do
	while true do
		io.write("What number do you want to factor? (show  multiplication = "..tostring(showMult)..")\n")
		num = io.read()
		if tonumber(num) then
			num = tonumber(num)
			break
		elseif tostring(num) == "t" or tostring(num) == "T" then
			showMult = true
		elseif tostring(num) == "f" or tostring(num) == "F" then
			showMult = false
		end
	end
	local oldthingie = 0

	for i = 1,num,1 do
		local thingie = num/i
		if thingie == math.floor(thingie) then
			if oldthingie ~= 0 then
				if oldthingie/i == 1 then
					io.write(string.format("Force-stop to prevent  duplication of factors - Factor 1: %.0f |  Factor 2: %.0f\n\n", i, thingie))
					break
				end
			end
			if showMult == true then
				io.write(i.." * "..thingie.." = "..num.."\n")
			else
				io.write("Factor 1: "..i.." | Factor 2: "..thingie.."\n")
			end
			oldthingie = thingie
		end
	end

	io.write("Press enter to factor another number.\n\n")
	io.read()
end
