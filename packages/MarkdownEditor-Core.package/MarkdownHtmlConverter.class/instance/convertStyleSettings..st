convert styling
convertStyleSettings: aStyleSettings

	^ '<style>',  
		(self convertHeadingStyleSettings: aStyleSettings),
		(self convertParagraphStyleSettings: aStyleSettings),
		(self convertBlockquoteStyleSettings: aStyleSettings),
		(self convertCodeBlockStyleSettings: aStyleSettings),
		(self convertListStyleSettings: aStyleSettings),
		'</style>'.
		