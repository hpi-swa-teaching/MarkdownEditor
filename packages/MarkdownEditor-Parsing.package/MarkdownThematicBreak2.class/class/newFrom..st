as yet unclassified
newFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '\s{0,3}((\*\s*)(\*\s*)(\*\s*)+|(_\s*)(_\s*)(_\s*)+|(-\s*)(-\s*)(-\s*)+)$'.
	(matcher matches: aString)
		ifTrue: [^self new
					isOpen: false;
					yourself].
	^ nil