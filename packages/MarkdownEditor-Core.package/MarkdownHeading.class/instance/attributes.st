accessing
attributes
	
	| attributes |
	attributes := OrderedCollection new.
	self level odd ifTrue: [attributes add: TextEmphasis underlined].
	attributes add: (TextFontReference toFont:
		(TextStyle default copy fontOfSize: self fontSize)).
	^ attributes
