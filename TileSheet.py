import glob
import Image
import os.path

############################################################################################
# CLASS AUTOSHEET
############################################################################################

class AutoSheet:

	###################################################

	def __init__(self, folder, widthInTiles,heightInTiles, baseTileWidth, baseTileHeight):
		self.folder = folder
		self.widthInTiles = widthInTiles
		self.heightInTiles = heightInTiles
		self.baseTileWidth = baseTileWidth
		self.baseTileHeight = baseTileHeight

		self.tiles = []
		self.files = []

		self.spriteInfo = []
		self.sprites = []

		for y in xrange(self.heightInTiles):
			self.tiles.append([])
			self.files.append([])
			for x in xrange(self.widthInTiles):
#				self.tiles[y].append(self.widthInTiles*x + y + 1)
				self.tiles[y].append('')
				self.files[y].append('-')

	###################################################
	def create(self):

		pngFiles = glob.glob(self.folder +  '*.png')
		sprite = ''

		#-----------------------------------------------------------------------
		for each in pngFiles:
			temp = each.split('\\')[1]
			n = len(temp)-8
			if sprite != temp[:n]:
				sprite = temp[:n]
				#self.spriteInfo.append(sprite)
				imgWidth, imgHeight = Image.open( each).size
				spriteWidthInTiles = imgWidth / self.baseTileWidth
				spriteHeightInTiles = imgHeight / self.baseTileHeight
				self.spriteInfo.append([sprite, imgWidth, imgHeight, spriteWidthInTiles, spriteHeightInTiles])
				self.sprites.append([])
				

		#-----------------------------------------------------------------------
		nSprite = 0
		for each in self.spriteInfo:

			n = 1
			while os.path.isfile(self.folder + each[0] + str(n).zfill(4) + '.png'):
				spriteFile = each[0] + str(n).zfill(4) + '.png'
				n = n + 1
				self.sprites[nSprite].append(spriteFile)
			#print(each, 'frames',n-1)
			self.spriteInfo[nSprite].append(n-1)
			nSprite = nSprite + 1
			#print(self.spriteInfo)

	###################################################
	def resize(self, baseTileSize):

		# make root resize folder using baseTileSize
		folder = self.folder + str(baseTileSize) + 'spr'
		if not os.path.exists(str(baseTileSize) + 'spr'):
			os.makedirs(str(baseTileSize) + 'spr')

		#-----------------------------------------------------------------------
		# create sprite folders within root resize folder
		numSprites = len(self.sprites)
		for spriteN in range(numSprites):
			folder = self.folder + str(baseTileSize) + '/' + self.spriteInfo[spriteN][0]

			numFrames = len(self.sprites[spriteN])
			for frameN in range(numFrames):

				inFile = self.folder + self.sprites[spriteN][frameN]
				outFile =  str(baseTileSize)  + 'spr/' + self.sprites[spriteN][frameN]
				print(inFile + ' >> ' + outFile)
				size = baseTileSize * self.spriteInfo[spriteN][3],  baseTileSize * self.spriteInfo[spriteN][4]

				im = Image.open(inFile)
				im.thumbnail(size, Image.ANTIALIAS)
				im.save(outFile, "png")

	###################################################
	def splitToBaseTile(self, baseTileSize, baseTileWidth, baseTileHeight):
		baseTileWidth = baseTileSize
		baseTileHeight = baseTileSize
		folder = str(baseTileSize) + '/'
		if not os.path.exists(str(baseTileSize)):
			os.makedirs(str(baseTileSize))

		#-----------------------------------------------------------------------
		numSprites = len(self.sprites)
		for spriteN in range(numSprites):

			numFrames = len(self.sprites[spriteN])
			for frameN in range(numFrames):

				print(self.spriteInfo[spriteN])
				numXTiles = self.spriteInfo[spriteN][3]
				numYTiles = self.spriteInfo[spriteN][4]

				segment = 1
				for eachY in range(0, numYTiles):
					for eachX in range(0, numXTiles):
						print(eachX,eachY, folder + self.spriteInfo[spriteN][0],str(frameN+1).zfill(4), str(segment).zfill(4))
						inFile = str(baseTileSize) + 'spr/' + self.spriteInfo[spriteN][0] + str(frameN+1).zfill(4) + '.png'
						print(inFile)
						image = Image.open(inFile)

						outFile = str(baseTileSize) + '/' + self.spriteInfo[spriteN][0] + str(frameN+1).zfill(4) + '_' + str(segment).zfill(4) + '.png'
						print(outFile)
						print('debug')
						tile = image.crop((eachX * baseTileWidth,eachY * baseTileHeight, (eachX +1) * baseTileWidth  , (eachY + 1) * baseTileHeight))
						tile.save(outFile,"PNG")
						segment += 1

	###################################################
	def sortSegments(self, baseTileWidth, baseTileHeight, widthInTiles, heightInTiles):

		#-----------------------------------------------------------------------
		# sort sprites into array, place segment filenames into array positions if available
		# generate log file if any are unable to be placed
		numSprites = len(self.sprites)
		for spriteN in range(numSprites):

			numFrames = len(self.sprites[spriteN])
			for frameN in range(numFrames):
				
				print(self.spriteInfo[spriteN])
				numXTiles = self.spriteInfo[spriteN][3]
				numYTiles = self.spriteInfo[spriteN][4]
				frame = self.spriteInfo[spriteN][4]

				tileN = 1
				positionNotFound = True
				while positionNotFound and (tileN < (widthInTiles * heightInTiles)):

					for arrayY in range(0, heightInTiles):

						if (arrayY + numYTiles) > heightInTiles:
							print(arrayY, "ygreater")
						else:
							print('else')
							
						for arrayX in range(0, widthInTiles):
							
							if (arrayX + numXTiles) > widthInTiles:
								print(arrayX, "xgreater")
							else:
								for eachY in range(0, numYTiles):
									for eachX in range(0, numXTiles):
										print(numYTiles * eachY + eachX + 1)
							print(tileN)
							tileN += 1

				print('while ended')

############################################################################################
# CLASS UTILITY
############################################################################################

#class Utility(object):
class Utility:

	###################################################
	def __init__(self):
		self.name = 'Utility Class'

		self.sheet = []
		self.sheetWidth = 0
		self.sheetHeight = 0
		self.spriteWidthInTiles = 0
		self.spriteHeightInTiles = 0

	###################################################
	def createSheet(self, heightInTiles, widthInTiles, maxFileNameLength):
		self.maxFileNameLength = maxFileNameLength
		self.sheetWidth = widthInTiles
		self.sheetHeight = heightInTiles
		self.sheet = [ [ 0 for x in range(widthInTiles)] for y in range(heightInTiles)]

	###################################################
	def printSheet(self):
		fileNameLength = 24
		for eachRow in range( self.sheetHeight ):
			s = ''
			for eachCol in range( self.sheetWidth ):
				if self.sheet[eachRow][eachCol] == '':
					s += '-'
				else:
					s += 'X'					
			print(s)

		#---------------------------------------- draw column labels
		s = ''
		print(s)
		for eachCol in range( self.sheetWidth ):
			s += ( '              ' + str(eachCol) ).ljust(self.maxFileNameLength) + ' '
		print(s)
		
		for eachRow in range( self.sheetHeight ):
			s = str(eachRow).rjust(4) + ' '					# draw row labels
			for eachCol in range( self.sheetWidth ):
				if self.sheet[eachRow][eachCol] == '':
					s += ''.rjust(self.maxFileNameLength,'-') + ' '
				else:
					s += self.sheet[eachRow][eachCol].rjust(self.maxFileNameLength) + ' '
			print(s)
	###################################################
	def fillSheet(self):
		for eachRow in range( self.sheetHeight ):
			for eachCol in range( self.sheetWidth ):
				self.sheet[eachRow][eachCol] = ''
	###################################################
	def findSpritePlacement(self, sprite, spriteHeightInTiles, spriteWidthInTiles, frame, baseTileSize, frameCounter):
		self.spriteWidthInTiles = spriteWidthInTiles
		self.spriteHeightInTiles = spriteHeightInTiles
		maxRow = self.sheetHeight - (spriteHeightInTiles - 1)
		maxCol = self.sheetWidth - (spriteWidthInTiles - 1)
		isFirstPlacement = True

		luaFileName = 'img/sheet' + str(baseTileSize) + '.lua'
		luaFile = open(luaFileName, 'a')

		for eachRow in range( maxRow ):
			for eachCol in range( maxCol ):
				
				s = ''
				for eachSpriteRow in range (spriteHeightInTiles):
					for eachSpriteCol in range (spriteWidthInTiles):
						s += self.sheet[eachRow + eachSpriteRow][eachCol + eachSpriteCol]

				if s == '':
					if isFirstPlacement:
						isFirstPlacement = False
						f = '\t\t{'
						f += 'x=' + str(eachCol * baseTileSize) + ','
						f += 'y=' + str(eachRow * baseTileSize) + ','
						f += 'width=' + str(spriteWidthInTiles * baseTileSize) + ','
						f += 'height=' + str(spriteHeightInTiles * baseTileSize) + ','
						f += '}, -- frame ' + str(frameCounter) + ' \n'
						for eachTempSpriteRow in range (spriteHeightInTiles):
							for eachTempSpriteCol in range (spriteWidthInTiles):
								self.sheet[eachRow + eachTempSpriteRow][eachCol + eachTempSpriteCol] = str(baseTileSize) + '/' + sprite + str(frame).zfill(4) + '_' + str(eachTempSpriteRow * spriteWidthInTiles + eachTempSpriteCol + 1).zfill(4) + '.png' 
		luaFile.write(f)
		luaFile.close()

	###################################################
	def mergeTiles(self, baseTileSize, textureSize):
#		imgSheet = Image.new('RGBA', (textureSize, textureSize))
		imgSheet = Image.new('RGBA', (16 * baseTileSize, 16 * baseTileSize))

		for eachRow in range( self.sheetHeight):
			for eachCol in range( self.sheetWidth):
				#print(eachRow,eachCol)
				#print(self.sheet[eachRow][eachCol])
				if self.sheet[eachRow][eachCol] == '':
					tile = Image.open(str(baseTileSize) + '/tile0256_0001.png')
				else:
					tile = Image.open(self.sheet[eachRow][eachCol])

				imgSheet.paste(tile, (eachCol * baseTileSize, eachRow*baseTileSize), tile)

		imgSheet.save('img/sheet' + str(baseTileSize) + '.png' ,"PNG")
		#imgSheet.show()

############################################################################################
# MAIN PROGRAM
############################################################################################

if not os.path.exists('img'):
	os.makedirs('img')

#import AutoSheet
#import Utility
# defs are relative to master copies produced from Flash CS5.5
spriteFolder = 'sprites/'
baseTileWidth = 256
baseTileHeight = 256
widthInTiles = 16
heightInTiles = 16

sheet = AutoSheet(spriteFolder, widthInTiles, heightInTiles, baseTileWidth, baseTileHeight)
sheet.create()

# STANDARD TILE SIZES for quick dev cycle
#config = [[1024, 40,], [2048,80], [4096,160]] # textureSize, baseTileSize

# ALL TILE SIZES for thorough dev cycle
#config = [[1024,12], [1024,16], [1024,20], [1024,24], [1024,32],  [1024,40], [2048,48], [2048, 64], [2048,80], [4096, 96], [4096,128], [4096,160]] # textureSize, baseTileSize
config = [[1024,16], [1024,20], [1024,24], [1024,32],  [1024,40], [2048,48], [2048, 64], [2048,80], [2048, 96], [2048,128]] # textureSize, baseTileSize

print(sheet.spriteInfo)
print('')

util = Utility()
sheetWidth = 16
sheetHeight = 16
maxFileNameLength = 21
util.createSheet(sheetHeight, sheetWidth, maxFileNameLength)

name = 0
width = 1
height = 2
widthInTiles = 3
heightInTiles = 4
numFrames = 5

for eachRow in range(0, len(config)):
	textureSize = config[eachRow][0]
	baseTileSize = config[eachRow][1]

	sheet.resize(baseTileSize)
	sheet.splitToBaseTile(baseTileSize, baseTileWidth, baseTileHeight)

	util.fillSheet()
	luaFileName = 'img/sheet' + str(baseTileSize) + '.lua'
	frameCounter = 1
	if os.path.isfile(luaFileName):
		os.remove(luaFileName)

	luaFileName = 'img/sheet' + str(baseTileSize) + '.lua'
	luaFile = open(luaFileName, 'a')
	f = 'local options = \n' + '{\n' + '\tframes = \n' + '\t{\n'
	luaFile.write(f)
	luaFile.close()

	spriteLocations = 'img/spriteLocations.lua'
	if os.path.isfile(spriteLocations):
		os.remove(spriteLocations)

	spriteLocationsFile = open(spriteLocations, 'a')
	f =  'local spriteLocations = \n' + '{\n'
	spriteLocationsFile.write(f)
	spriteLocationsFile.close()

	for eachSprite in range (len(sheet.spriteInfo)):		
		spriteLocationsFile = open(spriteLocations, 'a')
		f =  '\t' + sheet.spriteInfo[eachSprite][name] + '={' + 'name=' + "'" + sheet.spriteInfo[eachSprite][name] + "'"
		f +=  ',' + 'start=' + str(frameCounter)
		f +=  ',' + 'frames=' + str(sheet.spriteInfo[eachSprite][numFrames]) + '},\n'
		spriteLocationsFile.write(f)
		spriteLocationsFile.close()

		for eachFrame in range (sheet.spriteInfo[eachSprite][numFrames]):
			util.findSpritePlacement(sheet.spriteInfo[eachSprite][name], sheet.spriteInfo[eachSprite][heightInTiles], sheet.spriteInfo[eachSprite][widthInTiles], eachFrame + 1, baseTileSize, frameCounter)
			frameCounter += 1

	luaFileName = 'img/sheet' + str(baseTileSize) + '.lua'
	luaFile = open(luaFileName, 'a')
	f =  '\t}\n' + '}\n' + 'return options\n'
	luaFile.write(f)
	luaFile.close()

	spriteLocationsFile = open(spriteLocations, 'a')
	f =  '}\n' + 'return spriteLocations\n'
	spriteLocationsFile.write(f)
	spriteLocationsFile.close()

	util.printSheet()
	util.mergeTiles(baseTileSize, textureSize)

print('Finished Processing...')

#####################################################################
# DELETER
#####################################################################
import os
import shutil

def delFolder(folder):

	for the_file in os.listdir(folder):
		file_path = os.path.join(folder, the_file)
		try:
			#if os.path.isfile(file_path):
			os.unlink(file_path)
		except Exception, e:
			print e

	shutil.rmtree(folder)


#delFolder('12')
#delFolder('12spr')
delFolder('16')
delFolder('16spr')
delFolder('20')
delFolder('20spr')
delFolder('24')
delFolder('24spr')
delFolder('32')
delFolder('32spr')
delFolder('40')
delFolder('40spr')
delFolder('48')
delFolder('48spr')
delFolder('64')
delFolder('64spr')
delFolder('80')
delFolder('80spr')
delFolder('96')
delFolder('96spr')
delFolder('128')
delFolder('128spr')
#delFolder('160spr')
#delFolder('160')

#,128,96,80,64,48,40,32,24,20,16,12

print('Finished CleanUp...')
