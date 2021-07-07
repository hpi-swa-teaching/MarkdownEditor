styling
addAttributesFrom: aText from: aStartPosition to: anEndPosition

	"fixme: all text attributes are always packed on start position of leaf block!"
	"copy inline styling"
	aText runs doWithIndex: [:stylingAttribute :index | 
		stylingAttribute ifNotEmpty: 
			[self text addAllAttributes: stylingAttribute 
				from: index + aStartPosition - 1
				to: index + aStartPosition - 1]]