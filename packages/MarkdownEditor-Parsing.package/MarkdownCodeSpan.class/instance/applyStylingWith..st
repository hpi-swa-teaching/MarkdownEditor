styling
applyStylingWith: aMarkdownStyler

	| styler inlineCode fence |
	styler := (SHTextStylerST80 new
		classOrMetaClass: self class;
		parseAMethod: true;
		yourself).
	inlineCode := self rawContent asText.
	styler privateStyle: inlineCode.
	fence := Text new: self fenceLength.
	^ fence, inlineCode, fence