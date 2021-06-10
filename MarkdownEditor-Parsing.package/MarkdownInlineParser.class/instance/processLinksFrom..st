new inline parsing
processLinksFrom: aRawString

	| balancedBracketCollection |
	balancedBracketCollection := self calculateBalancedBracketCollectionFrom: aRawString.	
	(balancedBracketCollection last x = 1)
		ifFalse: [^ self processTextFrom: aRawString].

	"link starts always with first symbol in string"

	balancedBracketCollection do:
		[:bracketPair | | enclosedLink | 
			enclosedLink := ((aRawString copyFrom: (bracketPair y + 1) to: aRawString size) allRangesOfRegexMatches: '^\([^\)]*\)').
			enclosedLink ifNotEmpty: [
				(bracketPair x = 1) ifTrue: [ | endLinkIndex |
					endLinkIndex :=  bracketPair y + enclosedLink first stop.
					self inlineContainer add: (
						self createLinkFrom: (
							aRawString copyFrom: bracketPair x to: endLinkIndex)).
					^ aRawString copyFrom: endLinkIndex +1 to: aRawString size
				] ifFalse: [
					^ self processTextFrom: aRawString
				]
			]
		].
	
	^ self processTextFrom: aRawString