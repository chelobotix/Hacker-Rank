def cutTheSticks(arr)
  # Write your code here
  shortest = arr.min
  len = []


  while arr.length > 0


    len.push(arr.length)

    arr.each_with_index do |elem, i|
        arr[i] = arr[i] - shortest
    end
    arr.reject! { |elem| elem <= 0 }
    shortest = arr.min
  end

  len

end

array1 = [1,2,3]
p cutTheSticks(array1)

array1 = [5,4,4,2,2,8]
p cutTheSticks(array1)

array1 = [1, 13, 3, 8, 14, 9, 4, 4]
p cutTheSticks(array1)

array1 = [8, 8, 14, 10, 3, 5, 14, 12]
p cutTheSticks(array1)
