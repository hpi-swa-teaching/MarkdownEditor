parsing
startInlineParsing

	self state 
		document leafBlocks 
			do: [:block | block content 
					ifNotNil: [
						block needsInlineParsing 
							ifTrue: [block inlineElements: (self parseInline: block content)]
							ifFalse: [block inlineElements: (self parseInlineStringFrom: block content)]]]