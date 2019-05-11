testing
levelOf: headingString

	| chunks |
	chunks := headingString subStrings: {Character space. Character cr}.
	^ chunks first size
