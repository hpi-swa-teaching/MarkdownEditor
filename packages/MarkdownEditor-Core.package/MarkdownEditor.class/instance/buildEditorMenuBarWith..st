building
buildEditorMenuBarWith: aBuilder

	^  aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			aBuilder pluggableButtonSpec new
				label: 'New';
				model: self;
				enabled: true;
				action: #createNewInstance;
				yourself.
			aBuilder pluggableButtonSpec new
				label: 'Open';
				model: self;
				enabled: true;
				action: #openFile;
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
				action: #saveAsFile;
				yourself.
			aBuilder pluggableButtonSpec new
				label: 'Convert to Html';
				model: self;
				enabled: true;
				action: #convertToHTML;
				yourself.
			aBuilder pluggableButtonSpec new
				label: 'Options';
				model: self;
				action: #openOptions;
				enabled: true;
				yourself };
		yourself