converting
convertCodeBlock: aCodeBlock

	^ self createHtml: (aCodeBlock codeContent) with: 'code'