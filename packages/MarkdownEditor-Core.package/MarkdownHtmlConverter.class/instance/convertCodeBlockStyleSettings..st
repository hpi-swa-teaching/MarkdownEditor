convert styling
convertCodeBlockStyleSettings: aStyleSettings

	| codeBlock |
	codeBlock := '
		code {
			font-size: ', (aStyleSettings fontSizes at: MarkdownFencedCodeBlock labels first), 'px;
		}', Character cr.
	
	^ codeBlock