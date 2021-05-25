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
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Apply';
			model: self;
			enabled: true;
			action: #handleApply;
			yourself .
		aBuilder pluggableButtonSpec new
			label: 'Cancel';
			model: self;
			enabled: true;
			action: #handleCancel;
			yourself  }