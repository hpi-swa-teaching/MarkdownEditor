helper
delimiterTypeProcessing

	^ Dictionary newFromPairs:
		#($* #processPossibleDelimitersFrom:
			$[ #processLinkOrImageFrom:
			$~ #processPossibleDelimitersFrom:)