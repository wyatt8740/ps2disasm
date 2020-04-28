#!/usr/bin/env

from struct import pack

def isBitSet(n, k):
	return n & (1 << (k-1))

def setBit(n, k):
	return n | (1 << (k-1))

if __name__ == "__main__":
	chunkSize = 32
	inputFile = input("Enter file name: ")
	with open(inputFile, "rb") as input, open("comp_" + inputFile, "wb") as output:
		data = input.read(chunkSize)
		while data:
			ibuffer = [x for x in data]
			copyBuffer = []
			repeatNum = 0
			readBytes = [False] * chunkSize
			inlineBits = 0
			for i, d in enumerate(ibuffer):
				if not readBytes[i]:
					cnt = 0
					bitCount = 0
					for j in range(i, chunkSize):
						if ibuffer[j] == ibuffer[i]:
							cnt += 1
							readBytes[j] = True
							bitCount = setBit(bitCount, chunkSize-j)
					if cnt < 6:
						inlineBits |= bitCount
					else:
						repeatNum += 1
						copyBuffer.append(bytes([ibuffer[i]]))
						packed = pack(">I", bitCount)
						p1 = packed[:1]
						p2 = packed[1:2]
						p3 = packed[2:3]
						p4 = packed[3:4]
						copyBuffer.append(p1)
						copyBuffer.append(p2)
						copyBuffer.append(p3)
						copyBuffer.append(p4)
			
			output.write(bytes([repeatNum]))
			for b in copyBuffer:
				output.write(b)
			for i in range(chunkSize):
				if isBitSet(inlineBits, chunkSize-i):
					output.write(bytes([ibuffer[i]]))
			
			data = input.read(chunkSize)
			
		output.write(b'\xFF')