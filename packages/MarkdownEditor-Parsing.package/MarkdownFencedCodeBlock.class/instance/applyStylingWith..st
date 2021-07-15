styling
applyStylingWith: aMarkdownStyler

	| styler |
	styler := (SHTextStylerST80 new
		classOrMetaClass: self class;
		parseAMethod: true;
		yourself).
	^ aMarkdownStyler styleFencedCodeBlockWith: self and: styler