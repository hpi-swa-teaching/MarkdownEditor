parsing
parse: aStringOrText

	^ self 
		clean;
		textToParse: aStringOrText asText;
		tokenize;
		interpretTokens;
		attributizeText;
		textToParse
	