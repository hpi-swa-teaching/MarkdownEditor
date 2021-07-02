instance creation
newFrom: aString
	
	| matcher |
	matcher := (self backticksMatchFor: aString) ifNil: [self tildesMatchFor: aString].
	matcher
		ifNotNil: [^ self new
				indention: (matcher subexpression: 2) size;
				openingFence: (matcher subexpression: 3);
				info: ((matcher subexpressions: 4) at: 1 ifAbsent: ['']);
				closingFence: '';
				yourself].
	^ nil