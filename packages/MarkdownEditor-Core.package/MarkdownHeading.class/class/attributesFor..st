testing
attributesFor: aString
	
	| headingLevel attributes |
	headingLevel := self levelOf: aString.
	attributes := OrderedCollection new.
	((headingLevel + 1) isDivisibleBy: 2) ifTrue: [attributes add: TextEmphasis underlined].
	(headingLevel between: 1 and: 2) ifTrue: [attributes add: (TextFontReference toFont: (TextStyle default copy fontOfSize: 26))].
	(headingLevel between: 3 and: 4) ifTrue: [attributes add: (TextFontReference toFont: (TextStyle default copy fontOfSize: 22))].
	(headingLevel between: 5 and: 6) ifTrue: [attributes add: (TextFontReference toFont: (TextStyle default copy fontOfSize: 19))].
	^ attributes