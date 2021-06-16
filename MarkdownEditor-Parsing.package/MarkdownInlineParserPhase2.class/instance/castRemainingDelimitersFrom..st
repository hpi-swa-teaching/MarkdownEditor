clean up
castRemainingDelimitersFrom: aCollection

	| result |
	result := LinkedList new.
	aCollection 
		doWithIndex: [:inlineElement :index | 
			(inlineElement class = MarkdownDelimiter)
				ifTrue: [(inlineElement count = 0)
							ifFalse: [result add: inlineElement asMarkdownString]]
				ifFalse: [result add: inlineElement]].
	^ result