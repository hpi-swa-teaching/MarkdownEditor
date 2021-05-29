nesting
createNestedHTML: aNested

	| start stop nestedHTML |
	
	start := 0.
	stop := 0.
	nestedHTML := ''.
	
	aNested reversed doWithIndex:
		[:nestedMarkdown :i |
			i ~= 1 ifTrue: [
				| foo |
				foo := nestedMarkdown startPosition - 1 + nestedMarkdown indicatorLength.
				nestedMarkdown content: (StringUtil replaceFrom: start - foo 
													to: stop - foo 
													in: nestedMarkdown content 
													with: nestedHTML)].
			start := nestedMarkdown startPosition.
			stop := nestedMarkdown endPosition.
			nestedHTML := nestedMarkdown convertWith: self].
	
	^ {nestedHTML . stop}