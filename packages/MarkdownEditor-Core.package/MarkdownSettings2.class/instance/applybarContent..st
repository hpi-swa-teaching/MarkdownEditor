building
applybarContent: aBuilder
			
	^ {aBuilder pluggableButtonSpec new
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