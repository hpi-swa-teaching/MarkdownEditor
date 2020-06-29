parsing
createLinkFrom: opener and: closer

	| link |
	link := closer linkStartingAt: opener.
	link content: (self content copyFrom: opener endPosition + 1 to: closer startPosition - 1).
	^ link