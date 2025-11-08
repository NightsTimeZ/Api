local md5 = { ff = 0xffffffff, consts = {} }
local stg = [[ d76aa478 e8c7b756 242070db c1bdceee
    f57c0faf 4787c62a a8304613 fd469501
    698098d8 8b44f7af ffff5bb1 895cd7be
    6b901122 fd987193 a679438e 49b40821
    f61e2562 c040b340 265e5a51 e9b6c7aa
    d62f105d 02441453 d8a1e681 e7d3fbc8
    21e1cde6 c33707d6 f4d50d87 455a14ed
    a9e3e905 fcefa3f8 676f02d9 8d2a4c8a
    fffa3942 8771f681 6d9d6122 fde5380c
    a4beea44 4bdecfa9 f6bb4b60 bebfbc70
    289b7ec6 eaa127fa d4ef3085 04881d05
    d9d4d039 e6db99e5 1fa27cf8 c4ac5665
    f4292244 432aff97 ab9423a7 fc93a039
    655b59c3 8f0ccc92 ffeff47d 85845dd1
    6fa87e4f fe2ce6e0 a3014314 4e0811a1
    f7537e82 bd3af235 2ad7d2bb eb86d391
    67452301 efcdab89 98badcfe 10325476 ]]
stg:gsub("(%w+)", function(s) table.insert(md5.consts, tonumber(s, 16)) end)

-- Cache constants locally
local ff = md5.ff
local t = md5.consts

-- Define bit operations with local references
local band, bor, bxor = bit32.band, bit32.bor, bit32.bxor
local lshift, rshift = bit32.lshift, bit32.rshift
local bnot = bit32.bnot

-- Pre-define auxiliary functions (hoisted outside transform)
local function f(x, y, z) return bor(band(x, y), band(bnot(x), z)) end
local function g(x, y, z) return bor(band(x, z), band(y, bnot(z))) end
local function h(x, y, z) return bxor(x, bxor(y, z)) end
local function i(x, y, z) return bxor(y, bor(x, bnot(z))) end

function md5.transform(A, B, C, D, X)
	local function z(fn, a, b, c, d, x, s, ac)
		a = band(a + fn(b, c, d) + x + ac, ff)
		return bor(lshift(a, s), rshift(a, 32 - s)) + b
	end

	local a, b, c, d = A, B, C, D

	-- Round 1
	a = z(f, a, b, c, d, X[0], 7, t[1])
	d = z(f, d, a, b, c, X[1], 12, t[2])
	c = z(f, c, d, a, b, X[2], 17, t[3])
	b = z(f, b, c, d, a, X[3], 22, t[4])
	a = z(f, a, b, c, d, X[4], 7, t[5])
	d = z(f, d, a, b, c, X[5], 12, t[6])
	c = z(f, c, d, a, b, X[6], 17, t[7])
	b = z(f, b, c, d, a, X[7], 22, t[8])
	a = z(f, a, b, c, d, X[8], 7, t[9])
	d = z(f, d, a, b, c, X[9], 12, t[10])
	c = z(f, c, d, a, b, X[10], 17, t[11])
	b = z(f, b, c, d, a, X[11], 22, t[12])
	a = z(f, a, b, c, d, X[12], 7, t[13])
	d = z(f, d, a, b, c, X[13], 12, t[14])
	c = z(f, c, d, a, b, X[14], 17, t[15])
	b = z(f, b, c, d, a, X[15], 22, t[16])

	-- Round 2
	a = z(g, a, b, c, d, X[1], 5, t[17])
	d = z(g, d, a, b, c, X[6], 9, t[18])
	c = z(g, c, d, a, b, X[11], 14, t[19])
	b = z(g, b, c, d, a, X[0], 20, t[20])
	a = z(g, a, b, c, d, X[5], 5, t[21])
	d = z(g, d, a, b, c, X[10], 9, t[22])
	c = z(g, c, d, a, b, X[15], 14, t[23])
	b = z(g, b, c, d, a, X[4], 20, t[24])
	a = z(g, a, b, c, d, X[9], 5, t[25])
	d = z(g, d, a, b, c, X[14], 9, t[26])
	c = z(g, c, d, a, b, X[3], 14, t[27])
	b = z(g, b, c, d, a, X[8], 20, t[28])
	a = z(g, a, b, c, d, X[13], 5, t[29])
	d = z(g, d, a, b, c, X[2], 9, t[30])
	c = z(g, c, d, a, b, X[7], 14, t[31])
	b = z(g, b, c, d, a, X[12], 20, t[32])

	-- Round 3
	a = z(h, a, b, c, d, X[5], 4, t[33])
	d = z(h, d, a, b, c, X[8], 11, t[34])
	c = z(h, c, d, a, b, X[11], 16, t[35])
	b = z(h, b, c, d, a, X[14], 23, t[36])
	a = z(h, a, b, c, d, X[1], 4, t[37])
	d = z(h, d, a, b, c, X[4], 11, t[38])
	c = z(h, c, d, a, b, X[7], 16, t[39])
	b = z(h, b, c, d, a, X[10], 23, t[40])
	a = z(h, a, b, c, d, X[13], 4, t[41])
	d = z(h, d, a, b, c, X[0], 11, t[42])
	c = z(h, c, d, a, b, X[3], 16, t[43])
	b = z(h, b, c, d, a, X[6], 23, t[44])
	a = z(h, a, b, c, d, X[9], 4, t[45])
	d = z(h, d, a, b, c, X[12], 11, t[46])
	c = z(h, c, d, a, b, X[15], 16, t[47])
	b = z(h, b, c, d, a, X[2], 23, t[48])

	-- Round 4
	a = z(i, a, b, c, d, X[0], 6, t[49])
	d = z(i, d, a, b, c, X[7], 10, t[50])
	c = z(i, c, d, a, b, X[14], 15, t[51])
	b = z(i, b, c, d, a, X[5], 21, t[52])
	a = z(i, a, b, c, d, X[12], 6, t[53])
	d = z(i, d, a, b, c, X[3], 10, t[54])
	c = z(i, c, d, a, b, X[10], 15, t[55])
	b = z(i, b, c, d, a, X[1], 21, t[56])
	a = z(i, a, b, c, d, X[8], 6, t[57])
	d = z(i, d, a, b, c, X[15], 10, t[58])
	c = z(i, c, d, a, b, X[6], 15, t[59])
	b = z(i, b, c, d, a, X[13], 21, t[60])
	a = z(i, a, b, c, d, X[4], 6, t[61])
	d = z(i, d, a, b, c, X[11], 10, t[62])
	c = z(i, c, d, a, b, X[2], 15, t[63])
	b = z(i, b, c, d, a, X[9], 21, t[64])

	return band(A + a, ff), band(B + b, ff), band(C + c, ff), band(D + d, ff)
end

-- Optimized helper functions
local char, byte, sub, rep = string.char, string.byte, string.sub, string.rep
local format = string.format

local function leIstr(i)
	return char(
		band(i, 255),
		band(rshift(i, 8), 255),
		band(rshift(i, 16), 255),
		band(rshift(i, 24), 255)
	)
end

local function beInt(s)
	local v = 0
	for j = 1, #s do v = v * 256 + byte(s, j) end
	return v
end

local function leInt(s)
	local v = 0
	for j = #s, 1, -1 do v = v * 256 + byte(s, j) end
	return v
end

-- Pre-allocate table for leStrCuts
local function leStrCuts(s)
	local r = {}
	for j = 1, 64, 4 do
		r[#r + 1] = leInt(sub(s, j, j + 3))
	end
	r[0] = r[1]
	r[1] = r[2]
	for j = 2, 15 do r[j] = r[j + 1] end
	r[16] = nil
	return r
end

-- Cache padding strings
local padding_cache = {}
for j = 1, 64 do
	padding_cache[j] = char(128) .. rep(char(0), j - 1)
end

function md5.Calc(s)
	local msgLen = #s
	local padLen = 56 - msgLen % 64
	if msgLen % 64 > 56 then padLen = padLen + 64 end
	if padLen == 0 then padLen = 64 end

	-- Use cached padding
	s = s .. padding_cache[padLen] .. leIstr(8 * msgLen) .. leIstr(0)

	local a, b, c, d = t[65], t[66], t[67], t[68]

	for j = 1, #s, 64 do
		local X = leStrCuts(sub(s, j, j + 63))
		a, b, c, d = md5.transform(a, b, c, d, X)
	end

	local function swap(w) return beInt(leIstr(w)) end

	return format("%08x%08x%08x%08x", swap(a), swap(b), swap(c), swap(d))
end
return md5
