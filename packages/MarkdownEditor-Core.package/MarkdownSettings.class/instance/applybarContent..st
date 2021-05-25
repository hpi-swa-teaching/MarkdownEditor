building
applybarContent: aBuilder
			
	^ {aBuilder pluggableButtonSpec new
			label: 'Apply';
			model: self;
			enabled: true;
			action: #handleApply;
			color: Color green darker darker darker;
			yourself .
		aBuilder pluggableButtonSpec new
			label: 'Cancel';
			model: self;
			enabled: true;
			action: #handleCancel;
			color: Color red;
			yourself  }