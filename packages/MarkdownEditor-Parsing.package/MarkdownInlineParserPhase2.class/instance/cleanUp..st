clean up
cleanUp: aCollection

	| result |
	result := MarkdownLinkedList new.
	result := self castRemainingDelimitersFrom: aCollection.
	^ self mergeElementsFrom: result