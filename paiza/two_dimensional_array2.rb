m = gets.to_i
a = Array.new(3).map { Array.new(m) }
3.times do |i|
  row = gets.split(' ').map(&:to_i)
  m.times do |j|
    a[i][j] = row[j]
  end
end
a.each { |row| puts row.join(' ') }
