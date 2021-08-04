building
menuBarContentSpecFor: aBuilder
			
	^ {aBuilder pluggableButtonSpec new
			label: 'General';
			model: self settings;
			enabled: true;
			action: [self settings showStylerMorphsFor: 'General'];
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Headings';
			model: self settings;
			enabled: true;
			action: [self settings showStylerMorphsFor: 'Headings'];
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Lists';
			model: self settings;
			enabled: true;
			action: [self settings showStylerMorphsFor: 'Lists'];
			yourself}