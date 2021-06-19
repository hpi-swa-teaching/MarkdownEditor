helper
areAllRemainingDelimitersOfSameType

	| firstType |
	firstType := self delimiters first type.
	^ (self delimiters allSatisfy: [:del | del type = firstType])
