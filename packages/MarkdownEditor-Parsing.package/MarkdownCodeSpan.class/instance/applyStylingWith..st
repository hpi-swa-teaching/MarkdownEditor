styling
applyStylingWith: aMarkdownStyler

	| styler code fence |
	styler := (SHTextStylerST80 new
		classOrMetaClass: self class;
		parseAMethod: true;
		yourself).
	code := self rawContent asText.
	styler privateStyle: code.
	fence := Text new: self fenceLength.
	^ fence, code, fence