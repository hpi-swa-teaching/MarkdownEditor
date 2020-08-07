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
			action: [self openFile: FileChooser new];
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
			action: [self saveAsFile: 
				(FileSaverDialog openOnInitialFilename: 'swt.', self fileEnding)];
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