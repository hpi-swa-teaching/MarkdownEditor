helper
inlineIndexOf: anInlineElement

	self inlineElements
		doWithIndex: [:element :index | element == anInlineElement 
				ifTrue: [^ index]]
			