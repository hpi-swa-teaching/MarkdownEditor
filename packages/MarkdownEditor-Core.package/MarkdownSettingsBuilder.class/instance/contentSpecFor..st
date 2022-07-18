building
contentSpecFor: aBuilder

	^ aBuilder pluggableScrollPaneSpec new 
		model: self settings;
		name: #content;
		vScrollBarPolicy: #whenNeeded;
		hScrollBarPolicy: #whenNeeded;
		yourself