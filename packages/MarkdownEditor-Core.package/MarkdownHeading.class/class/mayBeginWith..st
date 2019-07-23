testing
mayBeginWith: aMarkdownLine

	| chunks |
	chunks := aMarkdownLine asString subStrings: {Character space. Character cr}.
	^ aMarkdownLine isIndented not 
		and: [chunks notEmpty] 
		and: [chunks first allSatisfy: [:char | char = $#]] 
		and: [chunks first size between: 1 and: 6] 