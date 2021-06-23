parsing
closeUnmatchedBlocks

	self state allBlocksClosed ifTrue: [
		self state lastMatchedContainer children do: [:child | child close]].
	self state allBlocksClosed: true.