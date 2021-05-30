nesting
createNestedHTML: aNested 
	| start stop nestedHTML converted|
	start := 0.
	stop := 0.
	converted := OrderedCollection new.
	nestedHTML := ''.
	aNested reversed
		doWithIndex: [:nestedMarkdown :i | 
			| foo temp remove|
			remove := OrderedCollection new.
			converted
				do: [:part | 
					foo := nestedMarkdown startPosition - 1 + nestedMarkdown indicatorLength.
					temp := nestedMarkdown content.
					nestedMarkdown
						content: (StringUtil
								replaceFrom: part first - foo
								to: part second - foo
								in: nestedMarkdown content
								with: part third).
						(temp = nestedMarkdown content) ifFalse: [remove add: part]].
			remove do: [:each| converted remove: each].
			start := nestedMarkdown startPosition.
			stop := nestedMarkdown endPosition.
			nestedHTML := nestedMarkdown convertWith: self.
			converted add: {start. stop. nestedHTML}].
	^ {nestedHTML. stop}