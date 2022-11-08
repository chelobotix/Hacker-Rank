def designerPdfViewer(h, word)
  # Write your code here
  letters = ("a".."z").to_a
  max = 0
  word.each_char do |char|
    letters.each_with_index do |letter, i|
      if char == letter
        if max < h[i]
          max = h[i]
        end
      end
    end
  end
  max * word.length


end

array1 = [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
str1 = "abc"
p designerPdfViewer(array1, str1)
