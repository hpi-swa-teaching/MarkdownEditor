clickable
click: aTreeObject

	(self isClickableObject: aTreeObject)
		ifFalse: [^ nil].
	self editor textMorph setSelection: (aTreeObject startPosition to: aTreeObject endPosition)
	