building
buildContentWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new model: self;
		 name: #content;
		 vScrollBarPolicy: #whenNeeded;
		 hScrollBarPolicy: #whenNeeded;
		 yourself