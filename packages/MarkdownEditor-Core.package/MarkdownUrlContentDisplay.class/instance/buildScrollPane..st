build
buildScrollPane: aBuilder

	^aBuilder pluggableScrollPaneSpec new
		model: self;
		children: #showContent;
		yourself