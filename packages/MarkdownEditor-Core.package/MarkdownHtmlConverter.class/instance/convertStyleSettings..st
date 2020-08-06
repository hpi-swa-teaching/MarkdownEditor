convertStyle
convertStyleSettings: aStyleSettings

	^ '<style>',  
		(self convertHeadingStyleSettings: aStyleSettings),
		(self convertParagraphStyleSettings: aStyleSettings),
		(self convertBlockquoteStyleSettings: aStyleSettings),
		(self convertCodeBlockStyleSettings: aStyleSettings),
		(self convertOrderedListStyleSettings: aStyleSettings),
		(self convertUnorderedListStyleSettings: aStyleSettings),
		'</style>'.
		