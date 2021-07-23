comparing
= anotherMarkdownInlineElement

	^ super = anotherMarkdownInlineElement 
		and: [
			self isEmail = anotherMarkdownInlineElement isEmail 
		and: [ 
			self path = anotherMarkdownInlineElement path ]]