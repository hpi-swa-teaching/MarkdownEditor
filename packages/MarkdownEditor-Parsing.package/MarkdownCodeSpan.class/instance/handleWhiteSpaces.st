helper
handleWhiteSpaces

	| whiteSpaceRuns |
	whiteSpaceRuns := self content allRangesOfRegexMatches: '', Character cr, '\s+'.
	whiteSpaceRuns 
		reverseDo: [:intervall | 
					self content: ((self content copyFrom: 1 to: intervall start), 
						(self content allButFirst: intervall stop))].
	self content replaceAll: Character cr with: Character space.
	(self content first = Character space and: [self content last = Character  space])
		ifTrue: [self content: (self content copyFrom: 2 to: self content size -1)]