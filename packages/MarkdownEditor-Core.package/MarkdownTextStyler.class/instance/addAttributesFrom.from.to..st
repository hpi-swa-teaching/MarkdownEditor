styling
addAttributesFrom: aText from: aStartPosition to: anEndPosition

	"copy inline styling"
	aText runs doWithIndex: [:stylingAttribute :index | 
		stylingAttribute ifNotEmpty: 
			[self text addAllAttributes: stylingAttribute 
				from: index + aStartPosition - 1
				to: index + aStartPosition - 1]]