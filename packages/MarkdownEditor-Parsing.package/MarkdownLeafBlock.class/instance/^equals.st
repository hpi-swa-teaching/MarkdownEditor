comparing
= anotherMarkdownLeafBlock

	^ super = anotherMarkdownLeafBlock 
		and: [self inlineElements = anotherMarkdownLeafBlock inlineElements 
			and: [ self content = anotherMarkdownLeafBlock content ]]