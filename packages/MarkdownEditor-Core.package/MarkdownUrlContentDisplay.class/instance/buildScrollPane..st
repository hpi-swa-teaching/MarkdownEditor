build
buildScrollPane: aBuilder

	^aBuilder pluggableScrollPaneSpec new
		model: self;
		children: #contentMorph;
		yourself