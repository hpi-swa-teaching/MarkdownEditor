clean up
castRemainingDelimitersFrom: aCollection

	| list |
	list := MarkdownLinkedList new.
	aCollection
		doWithIndex: [:inlineElement :index |
			(inlineElement class = MarkdownDelimiter)
  				ifTrue: [self removeDelimiterAndAdd: inlineElement to: list]
				ifFalse: [list add: inlineElement]].
	^ list