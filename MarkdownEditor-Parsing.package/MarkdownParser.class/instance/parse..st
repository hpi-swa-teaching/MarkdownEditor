parsing
parse: aString 
	self document: MarkdownDocument new.
	aString
		lineIndicesDo: [:start :endWithoutDelimiters :end | 			
			self addTextToLastOpenBlock:
				(self createNewBlocks:
					(self closeOpenBlocks: (aString copyFrom: start to: endWithoutDelimiters)
								startingAt: self document))]