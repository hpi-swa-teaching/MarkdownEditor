accessing
attributes
	
	| attributes |
	attributes := OrderedCollection new.
	attributes add: (TextFontReference toFont: self font).
	
	^ attributes
