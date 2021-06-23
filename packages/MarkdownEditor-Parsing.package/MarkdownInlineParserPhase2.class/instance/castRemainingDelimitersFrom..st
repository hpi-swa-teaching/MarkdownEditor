clean up
castRemainingDelimitersFrom: aCollection

	| result |
	result := MarkdownLinkedList new.
	aCollection
		doWithIndex: [:inlineElement :index |
			(inlineElement class = MarkdownDelimiter)
  				ifTrue: [(inlineElement count = 0)
							ifFalse: [result add: inlineElement asMarkdownString].
						self delimiters remove: inlineElement ifAbsent: []]
				ifFalse: [result add: inlineElement]].
	^ result