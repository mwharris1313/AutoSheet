local options = 
{
	frames = 
	{
		{x=0,y=0,width=80,height=80,}, -- frame 1 
		{x=80,y=0,width=80,height=80,}, -- frame 2 
		{x=160,y=0,width=80,height=80,}, -- frame 3 
		{x=240,y=0,width=80,height=80,}, -- frame 4 
		{x=320,y=0,width=80,height=80,}, -- frame 5 
		{x=400,y=0,width=80,height=80,}, -- frame 6 
		{x=480,y=0,width=80,height=80,}, -- frame 7 
		{x=560,y=0,width=80,height=80,}, -- frame 8 
		{x=640,y=0,width=80,height=80,}, -- frame 9 
		{x=720,y=0,width=80,height=80,}, -- frame 10 
		{x=800,y=0,width=80,height=80,}, -- frame 11 
		{x=880,y=0,width=80,height=80,}, -- frame 12 
		{x=960,y=0,width=80,height=80,}, -- frame 13 
		{x=1040,y=0,width=80,height=80,}, -- frame 14 
		{x=1120,y=0,width=80,height=80,}, -- frame 15 
		{x=1200,y=0,width=80,height=80,}, -- frame 16 
		{x=0,y=80,width=80,height=80,}, -- frame 17 
		{x=80,y=80,width=80,height=80,}, -- frame 18 
		{x=160,y=80,width=80,height=80,}, -- frame 19 
		{x=240,y=80,width=80,height=80,}, -- frame 20 
		{x=320,y=80,width=80,height=80,}, -- frame 21 
		{x=400,y=80,width=80,height=80,}, -- frame 22 
		{x=480,y=80,width=80,height=80,}, -- frame 23 
		{x=560,y=80,width=80,height=80,}, -- frame 24 
		{x=640,y=80,width=80,height=80,}, -- frame 25 
		{x=720,y=80,width=80,height=80,}, -- frame 26 
		{x=800,y=80,width=80,height=80,}, -- frame 27 
		{x=880,y=80,width=80,height=80,}, -- frame 28 
		{x=960,y=80,width=80,height=80,}, -- frame 29 
		{x=1040,y=80,width=80,height=80,}, -- frame 30 
		{x=1120,y=80,width=80,height=80,}, -- frame 31 
		{x=1200,y=80,width=80,height=80,}, -- frame 32 
		{x=0,y=160,width=80,height=80,}, -- frame 33 
		{x=80,y=160,width=80,height=80,}, -- frame 34 
		{x=160,y=160,width=80,height=80,}, -- frame 35 
		{x=240,y=160,width=80,height=80,}, -- frame 36 
		{x=320,y=160,width=80,height=80,}, -- frame 37 
		{x=400,y=160,width=80,height=80,}, -- frame 38 
		{x=480,y=160,width=80,height=80,}, -- frame 39 
		{x=560,y=160,width=80,height=80,}, -- frame 40 
		{x=640,y=160,width=80,height=80,}, -- frame 41 
		{x=720,y=160,width=80,height=80,}, -- frame 42 
		{x=800,y=160,width=80,height=80,}, -- frame 43 
		{x=880,y=160,width=80,height=80,}, -- frame 44 
		{x=960,y=160,width=80,height=80,}, -- frame 45 
		{x=1040,y=160,width=80,height=80,}, -- frame 46 
		{x=1120,y=160,width=80,height=80,}, -- frame 47 
		{x=1200,y=160,width=80,height=80,}, -- frame 48 
		{x=0,y=240,width=80,height=80,}, -- frame 49 
		{x=80,y=240,width=80,height=80,}, -- frame 50 
		{x=160,y=240,width=80,height=80,}, -- frame 51 
		{x=240,y=240,width=80,height=80,}, -- frame 52 
		{x=320,y=240,width=80,height=80,}, -- frame 53 
		{x=400,y=240,width=80,height=80,}, -- frame 54 
		{x=480,y=240,width=80,height=80,}, -- frame 55 
		{x=560,y=240,width=80,height=80,}, -- frame 56 
		{x=640,y=240,width=80,height=80,}, -- frame 57 
		{x=720,y=240,width=80,height=80,}, -- frame 58 
		{x=800,y=240,width=80,height=80,}, -- frame 59 
		{x=880,y=240,width=80,height=80,}, -- frame 60 
		{x=960,y=240,width=80,height=80,}, -- frame 61 
		{x=1040,y=240,width=80,height=80,}, -- frame 62 
		{x=1120,y=240,width=80,height=80,}, -- frame 63 
		{x=1200,y=240,width=80,height=80,}, -- frame 64 
		{x=0,y=320,width=80,height=80,}, -- frame 65 
		{x=80,y=320,width=80,height=80,}, -- frame 66 
		{x=160,y=320,width=80,height=80,}, -- frame 67 
		{x=240,y=320,width=80,height=80,}, -- frame 68 
		{x=320,y=320,width=80,height=80,}, -- frame 69 
		{x=400,y=320,width=80,height=80,}, -- frame 70 
		{x=480,y=320,width=80,height=80,}, -- frame 71 
		{x=560,y=320,width=80,height=80,}, -- frame 72 
		{x=640,y=320,width=80,height=80,}, -- frame 73 
		{x=720,y=320,width=80,height=80,}, -- frame 74 
		{x=800,y=320,width=80,height=80,}, -- frame 75 
		{x=880,y=320,width=80,height=80,}, -- frame 76 
		{x=960,y=320,width=80,height=80,}, -- frame 77 
		{x=1040,y=320,width=80,height=80,}, -- frame 78 
		{x=1120,y=320,width=80,height=80,}, -- frame 79 
		{x=1200,y=320,width=80,height=80,}, -- frame 80 
		{x=0,y=400,width=80,height=80,}, -- frame 81 
		{x=80,y=400,width=80,height=80,}, -- frame 82 
		{x=160,y=400,width=80,height=80,}, -- frame 83 
		{x=240,y=400,width=80,height=80,}, -- frame 84 
		{x=320,y=400,width=80,height=80,}, -- frame 85 
		{x=400,y=400,width=80,height=80,}, -- frame 86 
		{x=480,y=400,width=80,height=80,}, -- frame 87 
		{x=560,y=400,width=80,height=80,}, -- frame 88 
		{x=640,y=400,width=80,height=80,}, -- frame 89 
		{x=720,y=400,width=80,height=80,}, -- frame 90 
		{x=800,y=400,width=80,height=80,}, -- frame 91 
		{x=880,y=400,width=80,height=80,}, -- frame 92 
		{x=960,y=400,width=80,height=80,}, -- frame 93 
		{x=1040,y=400,width=80,height=80,}, -- frame 94 
		{x=1120,y=400,width=80,height=80,}, -- frame 95 
		{x=1200,y=400,width=80,height=80,}, -- frame 96 
		{x=0,y=480,width=80,height=80,}, -- frame 97 
		{x=80,y=480,width=80,height=80,}, -- frame 98 
		{x=160,y=480,width=80,height=80,}, -- frame 99 
		{x=240,y=480,width=80,height=80,}, -- frame 100 
		{x=320,y=480,width=80,height=80,}, -- frame 101 
		{x=400,y=480,width=80,height=80,}, -- frame 102 
		{x=480,y=480,width=80,height=80,}, -- frame 103 
		{x=560,y=480,width=80,height=80,}, -- frame 104 
		{x=640,y=480,width=80,height=80,}, -- frame 105 
		{x=720,y=480,width=80,height=80,}, -- frame 106 
		{x=800,y=480,width=80,height=80,}, -- frame 107 
		{x=880,y=480,width=80,height=80,}, -- frame 108 
		{x=960,y=480,width=80,height=80,}, -- frame 109 
		{x=1040,y=480,width=80,height=80,}, -- frame 110 
		{x=1120,y=480,width=80,height=80,}, -- frame 111 
		{x=1200,y=480,width=80,height=80,}, -- frame 112 
		{x=0,y=560,width=80,height=80,}, -- frame 113 
		{x=80,y=560,width=80,height=80,}, -- frame 114 
		{x=160,y=560,width=80,height=80,}, -- frame 115 
		{x=240,y=560,width=80,height=80,}, -- frame 116 
		{x=320,y=560,width=80,height=80,}, -- frame 117 
		{x=400,y=560,width=80,height=80,}, -- frame 118 
		{x=480,y=560,width=80,height=80,}, -- frame 119 
		{x=560,y=560,width=80,height=80,}, -- frame 120 
		{x=640,y=560,width=80,height=80,}, -- frame 121 
		{x=720,y=560,width=80,height=80,}, -- frame 122 
		{x=800,y=560,width=80,height=80,}, -- frame 123 
		{x=880,y=560,width=80,height=80,}, -- frame 124 
		{x=960,y=560,width=80,height=80,}, -- frame 125 
		{x=1040,y=560,width=80,height=80,}, -- frame 126 
		{x=1120,y=560,width=80,height=80,}, -- frame 127 
		{x=1200,y=560,width=80,height=80,}, -- frame 128 
		{x=0,y=640,width=80,height=80,}, -- frame 129 
		{x=80,y=640,width=80,height=80,}, -- frame 130 
		{x=160,y=640,width=80,height=80,}, -- frame 131 
		{x=240,y=640,width=80,height=80,}, -- frame 132 
		{x=320,y=640,width=80,height=80,}, -- frame 133 
		{x=400,y=640,width=80,height=80,}, -- frame 134 
		{x=480,y=640,width=80,height=80,}, -- frame 135 
		{x=560,y=640,width=80,height=80,}, -- frame 136 
		{x=640,y=640,width=80,height=80,}, -- frame 137 
		{x=720,y=640,width=80,height=80,}, -- frame 138 
		{x=800,y=640,width=80,height=80,}, -- frame 139 
		{x=880,y=640,width=80,height=80,}, -- frame 140 
		{x=960,y=640,width=80,height=80,}, -- frame 141 
		{x=1040,y=640,width=80,height=80,}, -- frame 142 
		{x=1120,y=640,width=80,height=80,}, -- frame 143 
		{x=1200,y=640,width=80,height=80,}, -- frame 144 
		{x=0,y=720,width=80,height=80,}, -- frame 145 
		{x=80,y=720,width=80,height=80,}, -- frame 146 
		{x=160,y=720,width=80,height=80,}, -- frame 147 
		{x=240,y=720,width=80,height=80,}, -- frame 148 
		{x=320,y=720,width=80,height=80,}, -- frame 149 
		{x=400,y=720,width=80,height=80,}, -- frame 150 
		{x=480,y=720,width=80,height=80,}, -- frame 151 
		{x=560,y=720,width=80,height=80,}, -- frame 152 
		{x=640,y=720,width=80,height=80,}, -- frame 153 
		{x=720,y=720,width=80,height=80,}, -- frame 154 
		{x=800,y=720,width=80,height=80,}, -- frame 155 
		{x=880,y=720,width=80,height=80,}, -- frame 156 
		{x=960,y=720,width=80,height=80,}, -- frame 157 
		{x=1040,y=720,width=80,height=80,}, -- frame 158 
		{x=1120,y=720,width=80,height=80,}, -- frame 159 
		{x=1200,y=720,width=80,height=80,}, -- frame 160 
		{x=0,y=800,width=80,height=80,}, -- frame 161 
		{x=80,y=800,width=80,height=80,}, -- frame 162 
		{x=160,y=800,width=80,height=80,}, -- frame 163 
		{x=240,y=800,width=80,height=80,}, -- frame 164 
		{x=320,y=800,width=80,height=80,}, -- frame 165 
		{x=400,y=800,width=80,height=80,}, -- frame 166 
		{x=480,y=800,width=80,height=80,}, -- frame 167 
		{x=560,y=800,width=80,height=80,}, -- frame 168 
		{x=640,y=800,width=80,height=80,}, -- frame 169 
		{x=720,y=800,width=80,height=80,}, -- frame 170 
		{x=800,y=800,width=80,height=80,}, -- frame 171 
		{x=880,y=800,width=80,height=80,}, -- frame 172 
		{x=960,y=800,width=80,height=80,}, -- frame 173 
		{x=1040,y=800,width=80,height=80,}, -- frame 174 
		{x=1120,y=800,width=80,height=80,}, -- frame 175 
		{x=1200,y=800,width=80,height=80,}, -- frame 176 
		{x=0,y=880,width=80,height=80,}, -- frame 177 
		{x=80,y=880,width=80,height=80,}, -- frame 178 
		{x=160,y=880,width=80,height=80,}, -- frame 179 
		{x=240,y=880,width=80,height=80,}, -- frame 180 
		{x=320,y=880,width=80,height=80,}, -- frame 181 
		{x=400,y=880,width=80,height=80,}, -- frame 182 
		{x=480,y=880,width=80,height=80,}, -- frame 183 
		{x=560,y=880,width=80,height=80,}, -- frame 184 
		{x=640,y=880,width=80,height=80,}, -- frame 185 
		{x=720,y=880,width=80,height=80,}, -- frame 186 
		{x=800,y=880,width=80,height=80,}, -- frame 187 
		{x=880,y=880,width=80,height=80,}, -- frame 188 
		{x=960,y=880,width=80,height=80,}, -- frame 189 
		{x=1040,y=880,width=80,height=80,}, -- frame 190 
		{x=1120,y=880,width=80,height=80,}, -- frame 191 
		{x=1200,y=880,width=80,height=80,}, -- frame 192 
		{x=0,y=960,width=80,height=80,}, -- frame 193 
		{x=80,y=960,width=80,height=80,}, -- frame 194 
		{x=160,y=960,width=80,height=80,}, -- frame 195 
		{x=240,y=960,width=80,height=80,}, -- frame 196 
		{x=320,y=960,width=80,height=80,}, -- frame 197 
		{x=400,y=960,width=80,height=80,}, -- frame 198 
		{x=480,y=960,width=80,height=80,}, -- frame 199 
		{x=560,y=960,width=80,height=80,}, -- frame 200 
		{x=640,y=960,width=80,height=80,}, -- frame 201 
		{x=720,y=960,width=80,height=80,}, -- frame 202 
		{x=800,y=960,width=80,height=80,}, -- frame 203 
		{x=880,y=960,width=80,height=80,}, -- frame 204 
		{x=960,y=960,width=80,height=80,}, -- frame 205 
		{x=1040,y=960,width=80,height=80,}, -- frame 206 
		{x=1120,y=960,width=80,height=80,}, -- frame 207 
		{x=1200,y=960,width=80,height=80,}, -- frame 208 
		{x=0,y=1040,width=80,height=80,}, -- frame 209 
		{x=80,y=1040,width=80,height=80,}, -- frame 210 
		{x=160,y=1040,width=80,height=80,}, -- frame 211 
		{x=240,y=1040,width=80,height=80,}, -- frame 212 
		{x=320,y=1040,width=80,height=80,}, -- frame 213 
		{x=400,y=1040,width=80,height=80,}, -- frame 214 
		{x=480,y=1040,width=80,height=80,}, -- frame 215 
		{x=560,y=1040,width=80,height=80,}, -- frame 216 
		{x=640,y=1040,width=80,height=80,}, -- frame 217 
		{x=720,y=1040,width=80,height=80,}, -- frame 218 
		{x=800,y=1040,width=80,height=80,}, -- frame 219 
		{x=880,y=1040,width=80,height=80,}, -- frame 220 
		{x=960,y=1040,width=80,height=80,}, -- frame 221 
		{x=1040,y=1040,width=80,height=80,}, -- frame 222 
		{x=1120,y=1040,width=80,height=80,}, -- frame 223 
		{x=1200,y=1040,width=80,height=80,}, -- frame 224 
		{x=0,y=1120,width=80,height=80,}, -- frame 225 
		{x=80,y=1120,width=80,height=80,}, -- frame 226 
		{x=160,y=1120,width=80,height=80,}, -- frame 227 
		{x=240,y=1120,width=80,height=80,}, -- frame 228 
		{x=320,y=1120,width=80,height=80,}, -- frame 229 
		{x=400,y=1120,width=80,height=80,}, -- frame 230 
		{x=480,y=1120,width=80,height=80,}, -- frame 231 
		{x=560,y=1120,width=80,height=80,}, -- frame 232 
		{x=640,y=1120,width=80,height=80,}, -- frame 233 
		{x=720,y=1120,width=80,height=80,}, -- frame 234 
		{x=800,y=1120,width=80,height=80,}, -- frame 235 
		{x=880,y=1120,width=80,height=80,}, -- frame 236 
		{x=960,y=1120,width=80,height=80,}, -- frame 237 
		{x=1040,y=1120,width=80,height=80,}, -- frame 238 
		{x=1120,y=1120,width=80,height=80,}, -- frame 239 
		{x=1200,y=1120,width=80,height=80,}, -- frame 240 
		{x=0,y=1200,width=80,height=80,}, -- frame 241 
		{x=80,y=1200,width=80,height=80,}, -- frame 242 
		{x=160,y=1200,width=80,height=80,}, -- frame 243 
		{x=240,y=1200,width=80,height=80,}, -- frame 244 
		{x=320,y=1200,width=80,height=80,}, -- frame 245 
		{x=400,y=1200,width=80,height=80,}, -- frame 246 
		{x=480,y=1200,width=80,height=80,}, -- frame 247 
		{x=560,y=1200,width=80,height=80,}, -- frame 248 
		{x=640,y=1200,width=80,height=80,}, -- frame 249 
		{x=720,y=1200,width=80,height=80,}, -- frame 250 
		{x=800,y=1200,width=80,height=80,}, -- frame 251 
		{x=880,y=1200,width=80,height=80,}, -- frame 252 
		{x=960,y=1200,width=80,height=80,}, -- frame 253 
		{x=1040,y=1200,width=80,height=80,}, -- frame 254 
		{x=1120,y=1200,width=80,height=80,}, -- frame 255 
		{x=1200,y=1200,width=80,height=80,}, -- frame 256 
	}
}
return options