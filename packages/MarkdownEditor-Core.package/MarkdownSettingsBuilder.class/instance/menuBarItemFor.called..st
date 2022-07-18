building
menuBarItemFor: aBuilder called: aString
			
	^ aBuilder pluggableButtonSpec new
			label: aString;
			model: self settings;
			enabled: true;
			action: [self settings showStylerMorphsFor: aString];
			yourself