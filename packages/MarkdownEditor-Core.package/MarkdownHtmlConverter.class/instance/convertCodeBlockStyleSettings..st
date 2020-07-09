convertStyle
convertCodeBlockStyleSettings: aStyleSettings
	| codeBlock |
	
	codeBlock := '
		p {
			font-size: ', (aStyleSettings fontSizes at: MarkdownCodeBlock labels first), 'px;
		}', Character cr.
	
	^ codeBlock