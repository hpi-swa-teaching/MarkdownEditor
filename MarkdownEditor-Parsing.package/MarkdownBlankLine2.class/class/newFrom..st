as yet unclassified
newFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '\s*'.
	(matcher matches: aString)
	ifTrue: [^self new 
				content: '';
				isOpen: false;
				yourself].
	^ nil 		