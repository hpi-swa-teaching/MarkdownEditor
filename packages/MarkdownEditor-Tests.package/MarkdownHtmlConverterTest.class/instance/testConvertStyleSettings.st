need to be implemented
testConvertStyleSettings

	| styleSettings expectedCss convertedStyle |
	
	styleSettings := self styleSettingsForHtmlTests.
	styleSettings fontSizes: (styleSettings fontSizes at: 'Heading 3' put: 46; yourself).
	styleSettings fontColors: (styleSettings fontColors at: 'Paragraph' put: Color red; yourself).
	styleSettings fontSizes: (styleSettings fontSizes at: 'Unord. List 3+' put: 46; yourself).
	styleSettings fontColors: (styleSettings fontColors at: 'Blockquote' put: Color red; yourself).
	
	convertedStyle := MarkdownHtmlConverter new convertStyleSettings: styleSettings.
	
	expectedCss := '<style>
		h1 {
			font-size: 34px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h2 {
			font-size: 28px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h3 {
			font-size: 46px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h4 {
			font-size: 19px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h5 {
			font-size: 16px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h6 {
			font-size: 14px;
			color: rgba(0, 0, 0, 1.0); 
		}

		p {
			font-size: 14px;
			color: rgba(255, 0, 0, 1.0); 
		}

		blockquote {
			font-size: 10px;
			color: rgba(255, 0, 0, 1.0); 
		}

		code {
			font-size: 14px;
		}

		ol {
			font-size: 14px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ol ol {
			font-size: 12px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ol ol ol {
			font-size: 10px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ul {
			font-size: 14px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ul ul {
			font-size: 12px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ul ul ul {
			font-size: 46px;
			color: rgba(0, 0, 0, 1.0); 
		}
</style>'.
	self assert: (expectedCss = convertedStyle)