initialize-release
initialize: aMarkdownReadStream

	super initialize.
	aMarkdownReadStream atEnd ifTrue: [Error signal: 'Stream end reached'].
	self content: (aMarkdownReadStream peek: 1)