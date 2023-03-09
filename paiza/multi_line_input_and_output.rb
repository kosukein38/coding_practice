# 改行区切りで自然数が n 個入力されるので、n 個の自然数をそのまま出力してください。
num = gets.chomp.to_i

(1..num).each do |i|
  output = gets.chomp.to_i
  puts output
end
