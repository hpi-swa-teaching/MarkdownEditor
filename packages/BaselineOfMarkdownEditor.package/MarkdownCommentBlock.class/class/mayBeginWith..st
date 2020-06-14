testing
mayBeginWith: aMarkdownLine
	
	^ aMarkdownLine isIndented not
		and: [aMarkdownLine asString withBlanksTrimmed beginsWith: self openingTag]