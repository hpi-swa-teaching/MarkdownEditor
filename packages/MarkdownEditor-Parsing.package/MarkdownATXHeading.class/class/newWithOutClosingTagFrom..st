instance creation
newWithOutClosingTagFrom: aString

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}(#{1,6})\s+(.*[^#\s])\s*'.
	(matcher matches: aString) ifFalse: 
	[matcher := RxMatcher forString: '\s{0,3}(#{1,6})\s+((\s*#*[^#\s]#*)*)\s*'].
	(matcher matches: aString)
		ifTrue: [^ self new
				level: ((matcher subexpressions: 2) first size);
				addLine: (StringUtil unescape: {$#} in: ((matcher subexpressions: 3) at: 1 ifAbsent: [''])", Character cr");
				beClosed;
				yourself].
	^ nil