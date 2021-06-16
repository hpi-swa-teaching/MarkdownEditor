helper
inlineIndexOf: anInlineElement

	self inlineElements
		doWithIndex: [:el :index | el == anInlineElement 
				ifTrue: [^index]]