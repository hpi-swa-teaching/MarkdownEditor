html
htmlOpeningTag
	
	| infoString |
	infoString := ''.
	self info ifNotEmpty: [infoString := ' class="language-', self info, '"'].
	^ '<pre><code', infoString, '>'