converting
convertParagraph: aParagraph

	aParagraph isEmpty ifTrue: [^ ''].
	^ self createHtml: (self convertInlines: aParagraph) with: 'p'