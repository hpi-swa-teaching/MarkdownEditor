building
applyBarContentSpecFor: aBuilder
			
	^ {aBuilder pluggableButtonSpec new
			label: 'Apply';
			model: self settings;
			enabled: true;
			action: #handleApply;
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Cancel';
			model: self settings;
			enabled: true;
			action: #handleCancel;
			yourself }