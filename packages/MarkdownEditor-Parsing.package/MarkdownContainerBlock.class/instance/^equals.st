comparing
= anotherMarkdownContainerBlock

	^ super = anotherMarkdownContainerBlock
		and: [self children = anotherMarkdownContainerBlock children]