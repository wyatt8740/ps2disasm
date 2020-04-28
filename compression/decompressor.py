#!/usr/bin/env

import struct

def isKthBitSet(n, k):
	return n & (1 << (k-1))

if __name__ == "__main__":
	inputFile = input("Enter file name: ")
	with open(inputFile, "rb") as input, open("uncomp_" + inputFile, "wb") as output:
		totalBytes = 0
		data = input.read(1)
		while data:
			repeat = ord(data)
			if repeat == 0xFF:
				break
			totalCount = 0
			buffer = [None] * 32
			for _ in range(repeat):
				copy = ord(input.read(1))
				count = int.from_bytes(input.read(4), "big")
				totalCount |= count
				bitCursor = 32
				for i in range(32):
					if isKthBitSet(count, bitCursor):
						buffer[i] = copy
					bitCursor -= 1
			if totalCount ^ 0xFFFFFFFF != 0:
				bitCursor = 32
				for i in range(32):
					if not isKthBitSet(totalCount, bitCursor):
						inline = ord(input.read(1))
						buffer[i] = inline
					bitCursor -= 1
			for b in buffer:
				output.write(bytes([b]))
				totalBytes += 1
			data = input.read(1)