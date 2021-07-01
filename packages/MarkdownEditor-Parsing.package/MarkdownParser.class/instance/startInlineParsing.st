parsing
startInlineParsing
	
	self document leafBlocks do: [:block | block content 
		ifNotEmpty: [block inlines: (self parseInline: block content)]]