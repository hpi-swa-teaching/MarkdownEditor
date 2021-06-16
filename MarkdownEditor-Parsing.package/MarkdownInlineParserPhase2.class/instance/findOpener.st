helper
findOpener

	| openerPosition remainingDelimiters opener |
	
	remainingDelimiters := self delimiters copyFrom: 1 to: (self delimiters indexOf: self currentCloser) - 1.
	openerPosition := remainingDelimiters findLast: [:del | del isPotentialOpener and: [self currentCloser type = del type]].
	(openerPosition = 0)
		ifTrue: [^ self handleNoOpeningDelimiter].
	opener := self delimiters at: openerPosition.
	opener index:  (self inlineIndexOf: opener).
	^ opener