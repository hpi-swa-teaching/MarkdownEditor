accessing
leafBlocks

	^ self children inject: OrderedCollection new into: [:blocks :child | blocks, child leafBlocks].