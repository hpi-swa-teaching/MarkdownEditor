parse
processEmphasis

	| emphasisType start end emphasis |
	emphasisType := self decideEmphasisType.
	start := self currentOpener inlineIndex + 1.
	end := self currentCloser inlineIndex - 1.
	emphasis := self createEmphasisWith: emphasisType with: (self inlineElements copyFrom: start to: end).
	self addEmphasisFrom: start to: end with: emphasis and: emphasisType
