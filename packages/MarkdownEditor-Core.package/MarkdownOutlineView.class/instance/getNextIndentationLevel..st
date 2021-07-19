building
getNextIndentationLevel: aNode

	(aNode isNumber or: [aNode isString or: [aNode isText]])
		ifTrue: [^ OrderedCollection new].
	^ aNode treeRepresentation