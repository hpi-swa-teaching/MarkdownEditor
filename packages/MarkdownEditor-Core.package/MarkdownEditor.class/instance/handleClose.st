settings
handleClose

	MarkdownSettings UniqueInstance ifWindowPresent: [MarkdownSettings close].
	MarkdownSettings unregister: self.
	self window closeBoxHit