build
buildScrollPane: aBuilder

	^aBuilder pluggableScrollPaneSpec new
		model: self;
		hScrollBarPolicy: #whenNeeded;
		vScrollBarPolicy: #whenNeeded;
		children: #showContent;
		yourself