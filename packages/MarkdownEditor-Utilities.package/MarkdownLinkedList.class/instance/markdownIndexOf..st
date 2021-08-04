index
markdownIndexOf: anElement

	self
		doWithIndex: [:element :index | 
			element == anElement
				ifTrue: [^ index]]