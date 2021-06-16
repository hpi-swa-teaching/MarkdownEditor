clean up
mergeElementsFrom: aCollection

	| mergedElements lastElement |
	
	mergedElements := LinkedList new.	
	lastElement := aCollection first.
	mergedElements add: lastElement.
	
	aCollection
		allButFirstDo: [:element | 
			(element class = lastElement class)
				ifTrue: [lastElement append: element]
				ifFalse: [mergedElements add: element.
						lastElement := element]].
	^ mergedElements