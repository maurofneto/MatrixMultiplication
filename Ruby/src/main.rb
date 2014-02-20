N = 100

a = Array.new(N) { |i| Array.new(N) { |j| 0.5 } }
b = Array.new(N) { |i| Array.new(N) { |j| N } }
c = Array.new(N) { |i| Array.new(N) { |j| 0.0 } }

startTime = Time.now

N.times {|i|
  N.times {|j|
    N.times {|k|
      c[i][j] += a[i][j] * b[j][k]
    }
  }
}

stopTime = Time.now
puts ((stopTime - startTime) * 1000).to_s + " ms. "

# Otimização em granularidade fina

#c = Array.new(N) { |i| Array.new(N) { |j| 0.0 } }
#startTime = Time.now
#
#N.times do |i|
#  N.times do |j|
#    N.times do |k|
#      c[i][j] += a[i][j] * b[j][k]
#    end
#  end
#end
#
#stopTime = Time.now
#puts ((stopTime - startTime) * 1000).to_s + " ms. "
#
#c = Array.new(N) { |i| Array.new(N) { |j| 0.0 } }
#startTime = Time.now
#
#for i in (0...N)
#  for j in (0...N)
#    for k in (0...N)
#      c[i][j] += a[i][j] * b[j][k]
#    end
#  end
#end
#
#stopTime = Time.now
#puts ((stopTime - startTime) * 1000).to_s + " ms. "

#c.each { |row| puts row.inspect }