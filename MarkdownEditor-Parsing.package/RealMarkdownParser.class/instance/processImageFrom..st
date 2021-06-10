new inline parsing
processImageFrom: aRawString

	aRawString second = $[
		ifTrue:[| balancedBracketCollection |
				balancedBracketCollection := self calculateBalancedBracketCollectionFrom: aRawString.	
				(balancedBracketCollection last x = 2)
					ifFalse: [^ self processStringFrom: aRawString].

				"link starts always with first symbol in string"

				balancedBracketCollection do:
					[:bracketPair | | enclosedLink | 
						enclosedLink := ((aRawString copyFrom: (bracketPair y + 1) to: aRawString size) allRangesOfRegexMatches: '^\([^\)]*\)').
						enclosedLink 
							ifNotEmpty: [(bracketPair x = 2) 
											ifTrue: [ | endLinkIndex |
													endLinkIndex :=  bracketPair y + enclosedLink first stop.
													self inlineContainer 
														add: (self createImageFrom: (aRawString copyFrom: bracketPair x to: endLinkIndex)).
													^ aRawString copyFrom: endLinkIndex +1 to: aRawString size] 
											ifFalse: [^ self processStringFrom: aRawString]]].
				^ self processStringFrom: aRawString]
		ifFalse: [^ self processStringFrom: aRawString]