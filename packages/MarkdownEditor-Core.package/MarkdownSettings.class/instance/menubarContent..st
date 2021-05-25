building
menubarContent: aBuilder
			
	^ {aBuilder pluggableButtonSpec new
			label: 'General';
			model: self;
			enabled: true;
			action: [self showStylerMorphsFor: 'General'];
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Headings';
			model: self;
			enabled: true;
			action: [self showStylerMorphsFor: 'Headings'];
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Lists';
			model: self;
			enabled: true;
			action: [self showStylerMorphsFor: 'Lists'];
			yourself }