helper
handleWhiteSpaces

	| whiteSpaceRuns |
	whiteSpaceRuns := self code allRangesOfRegexMatches: '', Character cr, '\s+'.
	whiteSpaceRuns 
		reverseDo: [:intervall | 
					self code: ((self code copyFrom: 1 to: intervall start), 
						(self code allButFirst: intervall stop))].
	self code replaceAll: Character cr with: Character space.
	(self code first = Character space and: [self code last = Character  space])
		ifTrue: [self code: (self code copyFrom: 2 to: self code size -1)]