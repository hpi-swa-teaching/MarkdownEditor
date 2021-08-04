clickable
click: aTreeObject

	(self isClickableObject: aTreeObject)
		ifFalse: [^ nil].
	self editor pluggableTextMorph setSelection: (aTreeObject startPosition to: aTreeObject endPosition)
	