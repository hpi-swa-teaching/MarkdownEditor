parsing
startInlineParsing

	self state 
		document leafBlocks 
			do: [:block | block content 
					ifNotNil: [
						block needsInlineParsing 
							ifTrue: [block inlines: (self parseInline: block content)]
							ifFalse: [block inlines: (self parseInlineStringFrom: block content)]]]