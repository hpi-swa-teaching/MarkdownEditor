as yet unclassified
handleWhiteSpaces

	| whiteSpaceRuns |
	whiteSpaceRuns := self content allRangesOfRegexMatches: '', Character cr, '\s+'.
	whiteSpaceRuns 
		reverseDo: [:intervall | 
			self content: ((self content copyFrom: 1 to: intervall start), 
				(self content allButFirst: intervall stop))].
	self content replaceAll: Character cr with: Character space
	"TODO: whitespace stripping"