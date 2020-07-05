tests - interpretation
testCreateLink

	inlineTextStyler parse: 'text [link](url) text'.
	self assert: inlineTextStyler inlineElements first content equals: 'link'.
	self assert: inlineTextStyler inlineElements first url equals: 'url'