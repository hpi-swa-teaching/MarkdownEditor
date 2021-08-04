parsing
startInlineParsing

	self state 
		document leafBlocks 
			do: [:block | block content 
					ifNotNil: [
						block needsInlineParsing 
							ifTrue: [block inlineElements: 
								(self parseInline: block content with: block innerStartPosition)]
							ifFalse: [block inlineElements: 
								(self parseInlineStringFrom: block content with: block innerStartPosition)]]]