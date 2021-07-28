comparing
= anotherMarkdownInlineElement
	
	^ super = anotherMarkdownInlineElement 
		and: [
			self code = anotherMarkdownInlineElement code
		and: [ 
			self fenceLength = anotherMarkdownInlineElement fenceLength 
		and: [ 
			self rawContent = anotherMarkdownInlineElement rawContent ]]]