instance creation
newWithOutClosingTagFrom: aString

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}(#{1,6})\s+(.*[^#\s])\s*'.
	(matcher matches: aString) ifFalse: 
	[matcher := RxMatcher forString: '\s{0,3}(#{1,6})\s+((\s*#*[^#\s]#*)*)\s*'].
	(matcher matches: aString)
		ifTrue: [^ self new
				level: ((matcher subexpression: 2) size);
				addLine: ((matcher subexpressions: 3) at: 1 ifAbsent: ['']);
				beClosed;
				yourself].
	^ nil