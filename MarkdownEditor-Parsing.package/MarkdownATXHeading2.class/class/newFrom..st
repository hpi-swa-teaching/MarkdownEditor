as yet unclassified
newFrom: aString

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}(#{1,6})\s+(.*([^#\s]#*)+).*'.
	(matcher matches: aString)
		ifTrue: [^self new
				level: ((matcher subexpressions: 2) first size);
				content: (StringUtil unescape: {$#} in: ((matcher subexpressions: 3) first));
				isOpen: false;
				yourself].
	^ nil