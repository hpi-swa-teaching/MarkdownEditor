as yet unclassified
newFrom: aSymbol

	self
		subclassesDo: [:sub | aSymbol = sub symbol
				ifTrue: [^ sub new content: aSymbol asString;
						 count: 1;
						 beActive;
						 yourself]]