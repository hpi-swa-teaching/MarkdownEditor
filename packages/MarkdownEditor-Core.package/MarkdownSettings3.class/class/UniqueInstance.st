accessing
UniqueInstance

	^ UniqueInstance ifNil: [UniqueInstance := self labelled: 'Markdown Editor - Settings']