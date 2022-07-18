tests
testMayNotBeExtended

	| fontReference |
	fontReference := UnextendableTextFontReference new.
	
	self deny: fontReference mayBeExtended