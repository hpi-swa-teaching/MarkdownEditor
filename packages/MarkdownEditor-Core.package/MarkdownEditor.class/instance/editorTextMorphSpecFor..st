building
editorTextMorphSpecFor: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		frame: (0 @ 0 corner: 1 @ 1);
		setText: #markdownText:;
		getText: #markdownText;
		stylerClass: MarkdownTextStyler;
		name: #textMorph;
		menu: #yellowButtonMenu:;
		yourself