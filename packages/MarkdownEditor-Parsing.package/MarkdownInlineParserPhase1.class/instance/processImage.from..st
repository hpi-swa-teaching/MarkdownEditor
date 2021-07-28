helpers - reference
processImage: aBalancedBracketCollection from: aRawString

	| bracketPair enclosedLink |
	bracketPair := (aBalancedBracketCollection select: [:pair | pair x = 1]) first.
	enclosedLink := self findEnclosedLinkFrom: aRawString and: bracketPair.
	enclosedLink
		ifNotEmpty: [^ self processPossible: MarkdownImage with: bracketPair 
						from: aRawString and: enclosedLink].
	^ self processStringFrom: aRawString