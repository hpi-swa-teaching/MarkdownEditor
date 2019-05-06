initialize-release
calculateLengthFor: aMarkdownReadStream

	| streamCopy count |
	aMarkdownReadStream atEnd ifTrue: [Error signal: 'Stream end reached'].
	streamCopy := aMarkdownReadStream copy.
	count := 0.
	[streamCopy next = $*] whileTrue: [ count := count + 1].
	(count = 0) ifTrue: [Error signal: 'No Match'].
	^ count