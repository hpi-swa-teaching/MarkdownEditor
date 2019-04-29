building
buildEditorWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		setText: #markdown:;
		getText: #markdown;
		yourself
	