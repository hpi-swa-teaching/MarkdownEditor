as yet unclassified
newWithClosingTagFrom: aString

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}(#{1,6})(\s+(.*\S)\s+#+\s*|[#\s]*)'.
	(matcher matches: aString)
		ifTrue: [^self new
				level: ((matcher subexpressions: 2) first size);
				content: (StringUtil unescape: {$#} in: ((matcher subexpressions: 4) at: 1 ifAbsent: ['']));
				isOpen: false;
				yourself].
	^ nil