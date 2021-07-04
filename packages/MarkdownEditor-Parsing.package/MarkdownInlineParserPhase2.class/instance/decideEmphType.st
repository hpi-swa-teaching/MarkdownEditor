helper
decideEmphType

	self currentOpener type = $*
		ifFalse: [^ 'not valid'].
	(self currentOpener count >= 2 and: [self currentCloser count >= 2])
		ifTrue: [^ MarkdownBold]
		ifFalse: [^ MarkdownItalic]