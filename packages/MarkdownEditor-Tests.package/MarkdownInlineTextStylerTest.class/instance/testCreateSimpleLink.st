tests - interpretation
testCreateSimpleLink

	inlineTextStyler parse: 'text <url> text'.
	self assert: inlineTextStyler inlineElements first content equals: 'url'.
	self assert: inlineTextStyler inlineElements first url equals: 'url'