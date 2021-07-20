as yet unclassified
click: aTreeObject

	| interval |
	(self isClickableObject: aTreeObject)
		ifFalse: [^ nil].
		
	interval := #(1. 0).
	interval at: 1 put: aTreeObject startPosition.
	interval at: 3 put: aTreeObject endPosition.
	self editor textMorph setSelection: interval
	