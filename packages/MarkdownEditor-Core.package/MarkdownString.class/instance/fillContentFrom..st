initialize-release
fillContentFrom: aMarkdownReadStream

	aMarkdownReadStream atEnd ifTrue: [Error signal: 'Stream end reached'].
	self content: (aMarkdownReadStream peek: 1)