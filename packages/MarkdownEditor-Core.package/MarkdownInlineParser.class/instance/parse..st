parsing
parse: aStringOrText

	^ self 
		text: aStringOrText asText;
		tokenize;
		interpretTokens;
		attributizeText;
		text
	