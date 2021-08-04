comparing
= anotherMarkdownBlock

	^ super = anotherMarkdownBlock 
		and: [self indentation = anotherMarkdownBlock indentation
			and: [self info = anotherMarkdownBlock info
				and: [self openingFence = anotherMarkdownBlock openingFence]]]