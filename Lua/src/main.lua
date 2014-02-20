local N = 100

local a = {}
local b = {}
local c = {}

for i = 1, N do
  a[i] = {}
  b[i] = {}
  c[i] = {}
  for j = 1, N do
    a[i][j] = 0.5
    b[i][j] = N
    c[i][j] = 0.0
  end
end

local start = os.clock()

for i = 1, N do
  for j = 1, N do
    for k = 1, N do
      c[i][j] = c[i][j] + a[i][j] * b[j][k]
    end
  end
end

local stop = os.clock()
print(string.format("%f ms.\n\n", (stop - start) * 1000))

--for i = 1, N do
--  line = "["
--  for j = 1, N do
--    line = line..c[i][j]
--    if j < N then
--      line = line..", "
--    else
--      line = line.."]"
--    end
--  end
--  print(line)
--end