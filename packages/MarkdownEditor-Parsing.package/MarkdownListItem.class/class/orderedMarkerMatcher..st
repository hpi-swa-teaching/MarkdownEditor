regex
orderedMarkerMatcher: aParsingState
	
	| maxPadding |
	maxPadding := self maxPaddingWith: aParsingState container.
	^ RxMatcher forString: '(\s{0,', maxPadding,'}([0-9]{1,9})(\.|\)))(.*)'