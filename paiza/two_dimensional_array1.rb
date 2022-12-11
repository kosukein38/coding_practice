# 入力例1
# 2
# 1 2 3
# 8 1 3

# 出力例1
# 1 2 3
# 8 1 3


n = gets.to_i
a = Array.new(n).map { Array.new(3) }
n.times do |i|
  row = gets.split(' ').map(&:to_i)
  3.times do |j|
    a[i][j] = row[j]
  end
end
a.each { |row| puts row.join(' ') }
