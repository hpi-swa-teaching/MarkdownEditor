comparing
= anotherMarkdownInlineElement
	
	^ super = anotherMarkdownInlineElement 
		and: [
			self content = anotherMarkdownInlineElement content
		and: [ 
			self fenceLength = anotherMarkdownInlineElement fenceLength 
		and: [ 
			self rawContent = anotherMarkdownInlineElement rawContent ]]]