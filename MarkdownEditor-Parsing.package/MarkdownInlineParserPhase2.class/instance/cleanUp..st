clean up
cleanUp: aCollection

	| result |
	result := LinkedList new.
	result := self castRemainingDelimitersFrom: aCollection.
	^ self mergeElementsFrom: result