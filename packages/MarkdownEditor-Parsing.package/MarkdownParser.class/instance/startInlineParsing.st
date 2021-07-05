parsing
startInlineParsing

	self state document leafBlocks do: [:block | block content 
		ifNotNil: [block inlines: (self parseInline: block content)]]