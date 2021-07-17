comparing
= anotherMarkdownLeafBlock

	^ super = anotherMarkdownLeafBlock 
		and: [self inlines = anotherMarkdownLeafBlock inlines 
			and: [ self content = anotherMarkdownLeafBlock content ]]