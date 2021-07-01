convert styling
convertCodeBlockStyleSettings: aStyleSettings
	| codeBlock |
	
	codeBlock := '
		code {
			font-size: ', (aStyleSettings fontSizes at: MarkdownFencedCodeBlock2 labels first), 'px;
		}', Character cr.
	
	^ codeBlock