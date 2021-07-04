instance creation
newWithClosingTagFrom: aString

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}(#{1,6})(\s+(.*\S)\s+#+\s*|[#\s]*)'.
	(matcher matches: aString)
		ifTrue: [^self new
				level: ((matcher subexpressions: 2) first size);
				addLine: (StringUtil unescape: {$#} in: ((matcher subexpressions: 4) at: 1 ifAbsent: ['']), Character cr);
				beClosed;
				yourself].
	^ nil