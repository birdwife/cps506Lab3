defmodule Lab3 do
	def firstTwo(list) do
		[_head | tail ] = list
		firstItem = hd list
		secondItem = hd tail
		case firstItem do
			^secondItem -> true
			_ -> false
		end
	end    

	def evenSize(list) do
		lengthOfList = Enum.count(list)
		test = rem lengthOfList, 2
		case test do
			0 -> true
			_ -> false
		end
	end

	def frontBack(list) do
		[head | tail] = list
		tail ++ [head]
	end

	def nextNineNine(list) do
		[head | tail] = list
		[head] ++ [99] ++ tail
	end

	def isCoord(list) do
		[head | tail] = list
		lengthOfList = Enum.count(tail)
		test1 = is_integer(head)
		test2 = is_integer(hd tail)
		list2 = [lengthOfList, test1, test2]
		case list2 do
			[1, true, true] -> true
			_ -> false
		end
	end

	def helloIfSo(list) do
		list2 = List.delete(list, "Hello")
		list2 = list2 ++ ["Hello"]
	end
end

