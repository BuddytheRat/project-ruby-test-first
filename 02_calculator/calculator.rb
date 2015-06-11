def add(*nums)
	nums.inject(0, :+)
end
def subtract(*nums)
	nums.inject(:-)	
end
def sum(nums)
	nums.inject(0, :+)
end
def multiply(*nums)
	nums.inject(:*)
end
def power(num1, num2)
	num1**num2
end
def factorial(num)
	if num == 0
		result = 0
	else
		result = (1..num).inject(:*)
	end
	result
end