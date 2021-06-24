constants
delimiterTypeProcessing

	^ Dictionary newFrom: {
		$* -> #processPossibleDelimitersFrom:.
		$_ -> #processPossibleDelimitersFrom:.
		$~ -> #processPossibleDelimitersFrom:.
	 	$[ -> #processReferenceFrom:.
		$< -> #processAutolinksFrom:
	}