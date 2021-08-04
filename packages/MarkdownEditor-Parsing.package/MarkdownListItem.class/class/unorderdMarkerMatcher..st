regex
unorderdMarkerMatcher: aParsingState
	
	| maxPadding |
	maxPadding := self maxPaddingWith: aParsingState container.
	^ RxMatcher forString: '(\s{0,', maxPadding,'}((-|\+|\*)))(.*)'