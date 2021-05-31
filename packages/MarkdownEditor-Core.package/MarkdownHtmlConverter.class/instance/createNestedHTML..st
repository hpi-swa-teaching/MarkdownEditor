nesting
createNestedHTML: aNested

	| start stop nestedHTML converted |
	start := 0.
	stop := 0.
	converted := OrderedCollection new.
	nestedHTML := ''.
	aNested reversed
		do: [:nestedMarkdown | 
			| replaced  |
			replaced := OrderedCollection new.
			converted
				do: [:part |
					| startPos original |
					startPos := nestedMarkdown startPosition - 1 + nestedMarkdown indicatorLength.
					original := nestedMarkdown content.
					nestedMarkdown
						content: (StringUtil
								replaceFrom: part first - startPos
								to: part second - startPos
								in: nestedMarkdown content
								with: part third).
						(original = nestedMarkdown content) ifFalse: [replaced add: part]].
			converted removeAllFoundIn: replaced.
			start := nestedMarkdown startPosition.
			stop := nestedMarkdown endPosition.
			nestedHTML := nestedMarkdown convertWith: self.
			converted add: {start. stop. nestedHTML}].
	^ {nestedHTML. stop}