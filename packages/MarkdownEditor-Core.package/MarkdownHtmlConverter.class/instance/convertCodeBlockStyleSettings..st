convertStyle
convertCodeBlockStyleSettings: aStyleSettings
	| codeBlock |
	
	codeBlock := '
	code {
		font-size: ', (aStyleSettings fontSizes at: MarkdownCodeBlock labels first), 'px;
	}', Character cr.
	
	^ codeBlock