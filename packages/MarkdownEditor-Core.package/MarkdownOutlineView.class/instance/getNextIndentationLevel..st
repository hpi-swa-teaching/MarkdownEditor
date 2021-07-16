building
getNextIndentationLevel: aNode

	(aNode isNumber or: [aNode isString])
		ifTrue: [^ OrderedCollection new].
	^ aNode treeRepresentation