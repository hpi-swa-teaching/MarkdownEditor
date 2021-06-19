parsing
parse: aString
	Transcript clear. 
	self document: MarkdownDocument new.
	self basicLastMatchedBlock: self document.
	aString
		lineIndicesDo: [:start :endWithoutDelimiters :end | 			
			self addTextToLastOpenBlock:
				(self createNewBlocks:
					(self closeOpenBlocks: 
						(aString copyFrom: start to: endWithoutDelimiters)
								startingAt: self document))].
	self startInlineParsing.
	Transcript show: self document asString.