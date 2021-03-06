local options = 
{
	frames = 
	{
		{x=0,y=0,width=32,height=32,}, -- frame 1 
		{x=32,y=0,width=32,height=32,}, -- frame 2 
		{x=64,y=0,width=32,height=32,}, -- frame 3 
		{x=96,y=0,width=32,height=32,}, -- frame 4 
		{x=128,y=0,width=32,height=32,}, -- frame 5 
		{x=160,y=0,width=32,height=32,}, -- frame 6 
		{x=192,y=0,width=32,height=32,}, -- frame 7 
		{x=224,y=0,width=32,height=32,}, -- frame 8 
		{x=256,y=0,width=32,height=32,}, -- frame 9 
		{x=288,y=0,width=32,height=32,}, -- frame 10 
		{x=320,y=0,width=32,height=32,}, -- frame 11 
		{x=352,y=0,width=32,height=32,}, -- frame 12 
		{x=384,y=0,width=32,height=32,}, -- frame 13 
		{x=416,y=0,width=32,height=32,}, -- frame 14 
		{x=448,y=0,width=32,height=32,}, -- frame 15 
		{x=480,y=0,width=32,height=32,}, -- frame 16 
		{x=0,y=32,width=32,height=32,}, -- frame 17 
		{x=32,y=32,width=32,height=32,}, -- frame 18 
		{x=64,y=32,width=32,height=32,}, -- frame 19 
		{x=96,y=32,width=32,height=32,}, -- frame 20 
		{x=128,y=32,width=32,height=32,}, -- frame 21 
		{x=160,y=32,width=32,height=32,}, -- frame 22 
		{x=192,y=32,width=32,height=32,}, -- frame 23 
		{x=224,y=32,width=32,height=32,}, -- frame 24 
		{x=256,y=32,width=32,height=32,}, -- frame 25 
		{x=288,y=32,width=32,height=32,}, -- frame 26 
		{x=320,y=32,width=32,height=32,}, -- frame 27 
		{x=352,y=32,width=32,height=32,}, -- frame 28 
		{x=384,y=32,width=32,height=32,}, -- frame 29 
		{x=416,y=32,width=32,height=32,}, -- frame 30 
		{x=448,y=32,width=32,height=32,}, -- frame 31 
		{x=480,y=32,width=32,height=32,}, -- frame 32 
		{x=0,y=64,width=32,height=32,}, -- frame 33 
		{x=32,y=64,width=32,height=32,}, -- frame 34 
		{x=64,y=64,width=32,height=32,}, -- frame 35 
		{x=96,y=64,width=32,height=32,}, -- frame 36 
		{x=128,y=64,width=32,height=32,}, -- frame 37 
		{x=160,y=64,width=32,height=32,}, -- frame 38 
		{x=192,y=64,width=32,height=32,}, -- frame 39 
		{x=224,y=64,width=32,height=32,}, -- frame 40 
		{x=256,y=64,width=32,height=32,}, -- frame 41 
		{x=288,y=64,width=32,height=32,}, -- frame 42 
		{x=320,y=64,width=32,height=32,}, -- frame 43 
		{x=352,y=64,width=32,height=32,}, -- frame 44 
		{x=384,y=64,width=32,height=32,}, -- frame 45 
		{x=416,y=64,width=32,height=32,}, -- frame 46 
		{x=448,y=64,width=32,height=32,}, -- frame 47 
		{x=480,y=64,width=32,height=32,}, -- frame 48 
		{x=0,y=96,width=32,height=32,}, -- frame 49 
		{x=32,y=96,width=32,height=32,}, -- frame 50 
		{x=64,y=96,width=32,height=32,}, -- frame 51 
		{x=96,y=96,width=32,height=32,}, -- frame 52 
		{x=128,y=96,width=32,height=32,}, -- frame 53 
		{x=160,y=96,width=32,height=32,}, -- frame 54 
		{x=192,y=96,width=32,height=32,}, -- frame 55 
		{x=224,y=96,width=32,height=32,}, -- frame 56 
		{x=256,y=96,width=32,height=32,}, -- frame 57 
		{x=288,y=96,width=32,height=32,}, -- frame 58 
		{x=320,y=96,width=32,height=32,}, -- frame 59 
		{x=352,y=96,width=32,height=32,}, -- frame 60 
		{x=384,y=96,width=32,height=32,}, -- frame 61 
		{x=416,y=96,width=32,height=32,}, -- frame 62 
		{x=448,y=96,width=32,height=32,}, -- frame 63 
		{x=480,y=96,width=32,height=32,}, -- frame 64 
		{x=0,y=128,width=32,height=32,}, -- frame 65 
		{x=32,y=128,width=32,height=32,}, -- frame 66 
		{x=64,y=128,width=32,height=32,}, -- frame 67 
		{x=96,y=128,width=32,height=32,}, -- frame 68 
		{x=128,y=128,width=32,height=32,}, -- frame 69 
		{x=160,y=128,width=32,height=32,}, -- frame 70 
		{x=192,y=128,width=32,height=32,}, -- frame 71 
		{x=224,y=128,width=32,height=32,}, -- frame 72 
		{x=256,y=128,width=32,height=32,}, -- frame 73 
		{x=288,y=128,width=32,height=32,}, -- frame 74 
		{x=320,y=128,width=32,height=32,}, -- frame 75 
		{x=352,y=128,width=32,height=32,}, -- frame 76 
		{x=384,y=128,width=32,height=32,}, -- frame 77 
		{x=416,y=128,width=32,height=32,}, -- frame 78 
		{x=448,y=128,width=32,height=32,}, -- frame 79 
		{x=480,y=128,width=32,height=32,}, -- frame 80 
		{x=0,y=160,width=32,height=32,}, -- frame 81 
		{x=32,y=160,width=32,height=32,}, -- frame 82 
		{x=64,y=160,width=32,height=32,}, -- frame 83 
		{x=96,y=160,width=32,height=32,}, -- frame 84 
		{x=128,y=160,width=32,height=32,}, -- frame 85 
		{x=160,y=160,width=32,height=32,}, -- frame 86 
		{x=192,y=160,width=32,height=32,}, -- frame 87 
		{x=224,y=160,width=32,height=32,}, -- frame 88 
		{x=256,y=160,width=32,height=32,}, -- frame 89 
		{x=288,y=160,width=32,height=32,}, -- frame 90 
		{x=320,y=160,width=32,height=32,}, -- frame 91 
		{x=352,y=160,width=32,height=32,}, -- frame 92 
		{x=384,y=160,width=32,height=32,}, -- frame 93 
		{x=416,y=160,width=32,height=32,}, -- frame 94 
		{x=448,y=160,width=32,height=32,}, -- frame 95 
		{x=480,y=160,width=32,height=32,}, -- frame 96 
		{x=0,y=192,width=32,height=32,}, -- frame 97 
		{x=32,y=192,width=32,height=32,}, -- frame 98 
		{x=64,y=192,width=32,height=32,}, -- frame 99 
		{x=96,y=192,width=32,height=32,}, -- frame 100 
		{x=128,y=192,width=32,height=32,}, -- frame 101 
		{x=160,y=192,width=32,height=32,}, -- frame 102 
		{x=192,y=192,width=32,height=32,}, -- frame 103 
		{x=224,y=192,width=32,height=32,}, -- frame 104 
		{x=256,y=192,width=32,height=32,}, -- frame 105 
		{x=288,y=192,width=32,height=32,}, -- frame 106 
		{x=320,y=192,width=32,height=32,}, -- frame 107 
		{x=352,y=192,width=32,height=32,}, -- frame 108 
		{x=384,y=192,width=32,height=32,}, -- frame 109 
		{x=416,y=192,width=32,height=32,}, -- frame 110 
		{x=448,y=192,width=32,height=32,}, -- frame 111 
		{x=480,y=192,width=32,height=32,}, -- frame 112 
		{x=0,y=224,width=32,height=32,}, -- frame 113 
		{x=32,y=224,width=32,height=32,}, -- frame 114 
		{x=64,y=224,width=32,height=32,}, -- frame 115 
		{x=96,y=224,width=32,height=32,}, -- frame 116 
		{x=128,y=224,width=32,height=32,}, -- frame 117 
		{x=160,y=224,width=32,height=32,}, -- frame 118 
		{x=192,y=224,width=32,height=32,}, -- frame 119 
		{x=224,y=224,width=32,height=32,}, -- frame 120 
		{x=256,y=224,width=32,height=32,}, -- frame 121 
		{x=288,y=224,width=32,height=32,}, -- frame 122 
		{x=320,y=224,width=32,height=32,}, -- frame 123 
		{x=352,y=224,width=32,height=32,}, -- frame 124 
		{x=384,y=224,width=32,height=32,}, -- frame 125 
		{x=416,y=224,width=32,height=32,}, -- frame 126 
		{x=448,y=224,width=32,height=32,}, -- frame 127 
		{x=480,y=224,width=32,height=32,}, -- frame 128 
		{x=0,y=256,width=32,height=32,}, -- frame 129 
		{x=32,y=256,width=32,height=32,}, -- frame 130 
		{x=64,y=256,width=32,height=32,}, -- frame 131 
		{x=96,y=256,width=32,height=32,}, -- frame 132 
		{x=128,y=256,width=32,height=32,}, -- frame 133 
		{x=160,y=256,width=32,height=32,}, -- frame 134 
		{x=192,y=256,width=32,height=32,}, -- frame 135 
		{x=224,y=256,width=32,height=32,}, -- frame 136 
		{x=256,y=256,width=32,height=32,}, -- frame 137 
		{x=288,y=256,width=32,height=32,}, -- frame 138 
		{x=320,y=256,width=32,height=32,}, -- frame 139 
		{x=352,y=256,width=32,height=32,}, -- frame 140 
		{x=384,y=256,width=32,height=32,}, -- frame 141 
		{x=416,y=256,width=32,height=32,}, -- frame 142 
		{x=448,y=256,width=32,height=32,}, -- frame 143 
		{x=480,y=256,width=32,height=32,}, -- frame 144 
		{x=0,y=288,width=32,height=32,}, -- frame 145 
		{x=32,y=288,width=32,height=32,}, -- frame 146 
		{x=64,y=288,width=32,height=32,}, -- frame 147 
		{x=96,y=288,width=32,height=32,}, -- frame 148 
		{x=128,y=288,width=32,height=32,}, -- frame 149 
		{x=160,y=288,width=32,height=32,}, -- frame 150 
		{x=192,y=288,width=32,height=32,}, -- frame 151 
		{x=224,y=288,width=32,height=32,}, -- frame 152 
		{x=256,y=288,width=32,height=32,}, -- frame 153 
		{x=288,y=288,width=32,height=32,}, -- frame 154 
		{x=320,y=288,width=32,height=32,}, -- frame 155 
		{x=352,y=288,width=32,height=32,}, -- frame 156 
		{x=384,y=288,width=32,height=32,}, -- frame 157 
		{x=416,y=288,width=32,height=32,}, -- frame 158 
		{x=448,y=288,width=32,height=32,}, -- frame 159 
		{x=480,y=288,width=32,height=32,}, -- frame 160 
		{x=0,y=320,width=32,height=32,}, -- frame 161 
		{x=32,y=320,width=32,height=32,}, -- frame 162 
		{x=64,y=320,width=32,height=32,}, -- frame 163 
		{x=96,y=320,width=32,height=32,}, -- frame 164 
		{x=128,y=320,width=32,height=32,}, -- frame 165 
		{x=160,y=320,width=32,height=32,}, -- frame 166 
		{x=192,y=320,width=32,height=32,}, -- frame 167 
		{x=224,y=320,width=32,height=32,}, -- frame 168 
		{x=256,y=320,width=32,height=32,}, -- frame 169 
		{x=288,y=320,width=32,height=32,}, -- frame 170 
		{x=320,y=320,width=32,height=32,}, -- frame 171 
		{x=352,y=320,width=32,height=32,}, -- frame 172 
		{x=384,y=320,width=32,height=32,}, -- frame 173 
		{x=416,y=320,width=32,height=32,}, -- frame 174 
		{x=448,y=320,width=32,height=32,}, -- frame 175 
		{x=480,y=320,width=32,height=32,}, -- frame 176 
		{x=0,y=352,width=32,height=32,}, -- frame 177 
		{x=32,y=352,width=32,height=32,}, -- frame 178 
		{x=64,y=352,width=32,height=32,}, -- frame 179 
		{x=96,y=352,width=32,height=32,}, -- frame 180 
		{x=128,y=352,width=32,height=32,}, -- frame 181 
		{x=160,y=352,width=32,height=32,}, -- frame 182 
		{x=192,y=352,width=32,height=32,}, -- frame 183 
		{x=224,y=352,width=32,height=32,}, -- frame 184 
		{x=256,y=352,width=32,height=32,}, -- frame 185 
		{x=288,y=352,width=32,height=32,}, -- frame 186 
		{x=320,y=352,width=32,height=32,}, -- frame 187 
		{x=352,y=352,width=32,height=32,}, -- frame 188 
		{x=384,y=352,width=32,height=32,}, -- frame 189 
		{x=416,y=352,width=32,height=32,}, -- frame 190 
		{x=448,y=352,width=32,height=32,}, -- frame 191 
		{x=480,y=352,width=32,height=32,}, -- frame 192 
		{x=0,y=384,width=32,height=32,}, -- frame 193 
		{x=32,y=384,width=32,height=32,}, -- frame 194 
		{x=64,y=384,width=32,height=32,}, -- frame 195 
		{x=96,y=384,width=32,height=32,}, -- frame 196 
		{x=128,y=384,width=32,height=32,}, -- frame 197 
		{x=160,y=384,width=32,height=32,}, -- frame 198 
		{x=192,y=384,width=32,height=32,}, -- frame 199 
		{x=224,y=384,width=32,height=32,}, -- frame 200 
		{x=256,y=384,width=32,height=32,}, -- frame 201 
		{x=288,y=384,width=32,height=32,}, -- frame 202 
		{x=320,y=384,width=32,height=32,}, -- frame 203 
		{x=352,y=384,width=32,height=32,}, -- frame 204 
		{x=384,y=384,width=32,height=32,}, -- frame 205 
		{x=416,y=384,width=32,height=32,}, -- frame 206 
		{x=448,y=384,width=32,height=32,}, -- frame 207 
		{x=480,y=384,width=32,height=32,}, -- frame 208 
		{x=0,y=416,width=32,height=32,}, -- frame 209 
		{x=32,y=416,width=32,height=32,}, -- frame 210 
		{x=64,y=416,width=32,height=32,}, -- frame 211 
		{x=96,y=416,width=32,height=32,}, -- frame 212 
		{x=128,y=416,width=32,height=32,}, -- frame 213 
		{x=160,y=416,width=32,height=32,}, -- frame 214 
		{x=192,y=416,width=32,height=32,}, -- frame 215 
		{x=224,y=416,width=32,height=32,}, -- frame 216 
		{x=256,y=416,width=32,height=32,}, -- frame 217 
		{x=288,y=416,width=32,height=32,}, -- frame 218 
		{x=320,y=416,width=32,height=32,}, -- frame 219 
		{x=352,y=416,width=32,height=32,}, -- frame 220 
		{x=384,y=416,width=32,height=32,}, -- frame 221 
		{x=416,y=416,width=32,height=32,}, -- frame 222 
		{x=448,y=416,width=32,height=32,}, -- frame 223 
		{x=480,y=416,width=32,height=32,}, -- frame 224 
		{x=0,y=448,width=32,height=32,}, -- frame 225 
		{x=32,y=448,width=32,height=32,}, -- frame 226 
		{x=64,y=448,width=32,height=32,}, -- frame 227 
		{x=96,y=448,width=32,height=32,}, -- frame 228 
		{x=128,y=448,width=32,height=32,}, -- frame 229 
		{x=160,y=448,width=32,height=32,}, -- frame 230 
		{x=192,y=448,width=32,height=32,}, -- frame 231 
		{x=224,y=448,width=32,height=32,}, -- frame 232 
		{x=256,y=448,width=32,height=32,}, -- frame 233 
		{x=288,y=448,width=32,height=32,}, -- frame 234 
		{x=320,y=448,width=32,height=32,}, -- frame 235 
		{x=352,y=448,width=32,height=32,}, -- frame 236 
		{x=384,y=448,width=32,height=32,}, -- frame 237 
		{x=416,y=448,width=32,height=32,}, -- frame 238 
		{x=448,y=448,width=32,height=32,}, -- frame 239 
		{x=480,y=448,width=32,height=32,}, -- frame 240 
		{x=0,y=480,width=32,height=32,}, -- frame 241 
		{x=32,y=480,width=32,height=32,}, -- frame 242 
		{x=64,y=480,width=32,height=32,}, -- frame 243 
		{x=96,y=480,width=32,height=32,}, -- frame 244 
		{x=128,y=480,width=32,height=32,}, -- frame 245 
		{x=160,y=480,width=32,height=32,}, -- frame 246 
		{x=192,y=480,width=32,height=32,}, -- frame 247 
		{x=224,y=480,width=32,height=32,}, -- frame 248 
		{x=256,y=480,width=32,height=32,}, -- frame 249 
		{x=288,y=480,width=32,height=32,}, -- frame 250 
		{x=320,y=480,width=32,height=32,}, -- frame 251 
		{x=352,y=480,width=32,height=32,}, -- frame 252 
		{x=384,y=480,width=32,height=32,}, -- frame 253 
		{x=416,y=480,width=32,height=32,}, -- frame 254 
		{x=448,y=480,width=32,height=32,}, -- frame 255 
		{x=480,y=480,width=32,height=32,}, -- frame 256 
	}
}
return options
