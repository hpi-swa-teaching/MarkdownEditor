accessing
codeContent

	| first last |
	first := (self content indexOf: Character cr ifAbsent: [^ '']) + 1.
	last := self isClosed
		ifTrue: [self lastLine size]
		ifFalse: [0].
	^ self content copyFrom: first to: self content size - last