building
menubarContent: aBuilder
			
	^ {aBuilder pluggableButtonSpec new
			label: 'New';
			model: self;
			enabled: true;
			action: #createNewInstance;
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Open';
			model: self;
			enabled: true;
			action: #openFileDialog;
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Save';
			model: self;
			enabled: true;
			action: #saveText;
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Save As';
			model: self;
			enabled: true;
			action: #saveAsFileDialog;
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Convert to Html';
			model: self;
			enabled: true;
			action: #convertToHTML;
			yourself.
		aBuilder pluggableButtonSpec new
			label: 'Settings';
			model: self;
			action: #openSettings;
			enabled: true;
			yourself }