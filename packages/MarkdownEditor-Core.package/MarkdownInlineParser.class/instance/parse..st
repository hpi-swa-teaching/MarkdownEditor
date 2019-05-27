parsing
parse: aStringOrText

	^ self 
		clean;
		text: aStringOrText asText;
		tokenize;
		interpretTokens;
		attributizeText;
		text
	