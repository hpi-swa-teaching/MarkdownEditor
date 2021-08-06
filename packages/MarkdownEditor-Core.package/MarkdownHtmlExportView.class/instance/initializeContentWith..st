initialize-release
initializeContentWith: aHtmlString

	self addMorph: (PluggableTextMorph new setText: aHtmlString) frame: (0@0 corner: 1@1).