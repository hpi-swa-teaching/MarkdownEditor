convertStyle
convertStyleSettings: aStyleSettings
	| css |
	
	css := '<style>'.
	css := css,  (self convertHeadingStyleSettings: aStyleSettings).
	css := css, ( self convertParagraphStyleSettings: aStyleSettings).
	css := css, (self convertBlockquoteStyleSettings: aStyleSettings).
	css := css, (self convertCodeBlockStyleSettings: aStyleSettings).
	css := css, (self convertOrderedListStyleSettings: aStyleSettings).
	css := css, (self convertUnorderedListStyleSettings: aStyleSettings).
	css := css, '</style>'.
	
	^ css