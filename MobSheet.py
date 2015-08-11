import glob
import Image
import os.path
import math

############################################################################################
# CLASS AUTOMOBSHEET
############################################################################################

class AutoMobSheet:

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
		folder = self.folder + str(baseTileSize) + 'mob'
		if not os.path.exists(str(baseTileSize) + 'mob'):
			os.makedirs(str(baseTileSize) + 'mob')

		#-----------------------------------------------------------------------
		# create sprite folders within root resize folder
		numSprites = len(self.sprites)
		for spriteN in range(numSprites):
			folder = self.folder + str(baseTileSize) + '/' + self.spriteInfo[spriteN][0]

			numFrames = len(self.sprites[spriteN])
			for frameN in range(numFrames):

				inFile = self.folder + self.sprites[spriteN][frameN]
				outFile = str(baseTileSize)  + 'mob/' + self.sprites[spriteN][frameN]
				print(inFile + ' >> ' + outFile)
				size = baseTileSize * self.spriteInfo[spriteN][3],  baseTileSize * self.spriteInfo[spriteN][4]

				im = Image.open(inFile)
				im.thumbnail(size, Image.ANTIALIAS)
				im.save(outFile, "png")



############################################################################################
# CLASS MOBUTILITY
############################################################################################

#class Utility(object):
class MobUtility:

	###################################################
	def __init__(self):
		self.name = 'MobUtility Class'

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
	def mergeTiles(self, baseTileSize, textureSize, name, width, height, numFrames):
		print('hey')
		#self.sheetWidth = widthInTiles
		#self.sheetHeight = heightInTiles
		print(name, width, height, numFrames)
		sheetWidthInTiles = int(math.ceil(math.sqrt(numFrames)))
		print(sheetWidthInTiles)
		
		#imgSheet = Image.new('RGBA', (baseTileSize * numFrames, baseTileSize))
		imgSheet = Image.new('RGBA', (baseTileSize * sheetWidthInTiles, baseTileSize * sheetWidthInTiles))

		countRows = 0
		for each in range( numFrames):

			#print(eachRow,eachCol)
			#print(self.sheet[eachRow][eachCol])
			tile = Image.open(str(baseTileSize) + 'mob/' + name + str(each + 1).zfill(4) + '.png')
			imgSheet.paste(tile, ( ((each % sheetWidthInTiles)) * baseTileSize, int(each / sheetWidthInTiles) * baseTileSize), tile)
			


		imgSheet.save( 'img/' + name + str(baseTileSize) + '.png' ,"PNG")
		#imgSheet.show()

############################################################################################
# MobMAIN PROGRAM
############################################################################################

#import MobSheet
#import Utility
# defs are relative to master copies produced from Flash CS5.5
spriteFolder = 'mobs/'
baseTileWidth = 256
baseTileHeight = 256
widthInTiles = 16
heightInTiles = 16

sheet = AutoMobSheet(spriteFolder, widthInTiles, heightInTiles, baseTileWidth, baseTileHeight)
sheet.create()

# STANDARD TILE SIZES for quick dev cycle
#config = [[1024, 40,], [2048,80], [4096,160]] # textureSize, baseTileSize

# ALL TILE SIZES for thorough dev cycle
#config = [[1024,12], [1024,16], [1024,20], [1024,24], [1024,32],  [1024,40], [2048,48], [2048, 64], [2048,80], [4096, 96], [4096,128], [4096,160]] # textureSize, baseTileSize
config = [[1024,16], [1024,20], [1024,24], [1024,32],  [1024,40], [2048,48], [2048, 64], [2048,80], [2048, 96], [2048,128]] # textureSize, baseTileSize


print(sheet.spriteInfo)
print('')

#util = Utility.Utility()
util = MobUtility()
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

	luaFileName = 'img/mobsheet' + str(baseTileSize) + '.lua'
	frameCounter = 1
	if os.path.isfile(luaFileName):
		os.remove(luaFileName)

	luaFileName = 'img/mobsheet' + str(baseTileSize) + '.lua'
	luaFile = open(luaFileName, 'a')
	f = 'local options = \n' + '{\n' + '\tframes = \n' + '\t{\n'
	luaFile.write(f)
	luaFile.close()

	luaFileName = 'img/mobsheet' + str(baseTileSize) + '.lua'
	luaFile = open(luaFileName, 'a')

	f = '\t\t{'
	f += 'x=' + str(baseTileSize) + ','
	f += 'y=0' + ','
	f += 'width=' + str(baseTileSize) + ','
	f += 'height=' + str(baseTileSize) + ','
	f += '}, -- frame ' + str(frameCounter) + ' \n'
	luaFile.write(f)
	luaFile.close()

	spriteLocations = 'img/mobLocations.lua'
	if os.path.isfile(spriteLocations):
		os.remove(spriteLocations)

	spriteLocationsFile = open(spriteLocations, 'a')
	f =  'local mobLocations = \n' + '{\n'
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
			frameCounter += 1

	luaFileName = 'img/mobsheet' + str(baseTileSize) + '.lua'
	luaFile = open(luaFileName, 'a')
	f =  '\t}\n' + '}\n' + 'return options\n'
	luaFile.write(f)
	luaFile.close()

	spriteLocationsFile = open(spriteLocations, 'a')
	f =  '}\n' + 'return mobLocations\n'
	spriteLocationsFile.write(f)
	spriteLocationsFile.close()
	
	for eachSprite in range (len(sheet.spriteInfo)):
		util.mergeTiles(baseTileSize, textureSize, sheet.spriteInfo[eachSprite][name] , sheet.spriteInfo[eachSprite][width], sheet.spriteInfo[eachSprite][height], sheet.spriteInfo[eachSprite][numFrames])

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

#delFolder('12mob')
delFolder('16mob')
delFolder('20mob')
delFolder('24mob')
delFolder('32mob')
delFolder('40mob')
delFolder('48mob')
delFolder('64mob')
delFolder('80mob')
delFolder('96mob')
delFolder('128mob')
#delFolder('160mob')

print('Finished Processing...')
