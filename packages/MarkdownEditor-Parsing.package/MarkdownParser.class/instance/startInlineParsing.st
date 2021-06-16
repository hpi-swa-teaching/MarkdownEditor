parsing
startInlineParsing
	
	| inlineParser |
	inlineParser := MarkdownInlineParser new.
	self document leafBlocks do: [:block | block content 
		ifNotNil: [block inlines: (inlineParser parse: block content)]]