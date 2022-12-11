# 3
# 1 8
# 2 8 1
# 3 8 1 3


n = gets.to_i
result = []
n.times do
  row = gets.split(' ').map(&:to_i)
  row.shift
  result << row
end
result.each { |row| puts row.join(' ').to_s }
