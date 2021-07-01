convert styling
convertHead

	^ '<head>', Character cr,
		(self convertStyleSettings: MarkdownSettings currentStyleSettings), Character cr,
		'</head>', Character cr