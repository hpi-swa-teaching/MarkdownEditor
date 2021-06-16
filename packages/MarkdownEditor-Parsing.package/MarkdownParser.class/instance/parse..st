parsing
parse: aString
	Transcript clear. 
	self document: MarkdownDocument new.
	self lastMatchedBlock: self document.
	aString
		lineIndicesDo: [:start :endWithoutDelimiters :end | 			
			self addTextToLastOpenBlock:
				(self createNewBlocks:
					(self closeOpenBlocks: 
						(aString copyFrom: start to: endWithoutDelimiters)
								startingAt: self document))].
	Transcript show: self document asString.