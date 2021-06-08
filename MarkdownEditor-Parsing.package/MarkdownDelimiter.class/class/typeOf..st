as yet unclassified
typeOf: aSymbol

	self
		subclassesDo: [:sub | aSymbol = sub symbol
				ifTrue: [^ sub class]]