#配列の合計

array = [1, 3, 5, 6, 3, 2, 5, 23, 2]
ans = 0

array.each { |element| ans += element }

puts ans
