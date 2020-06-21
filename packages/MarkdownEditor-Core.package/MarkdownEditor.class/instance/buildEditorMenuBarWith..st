as yet unclassified
buildEditorMenuBarWith: aBuilder

	^  aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			aBuilder pluggableButtonSpec new
				label: 'New';
				model: self;
				enabled: true;
				action: #createNewInstancel;
				yourself.
			aBuilder pluggableButtonSpec new
				label: 'Convert to Html';
				model: self;
				enabled: true;
				action: #convertToHtml;
				yourself.
			aBuilder pluggableButtonSpec new
				label: 'Options';
				model: self;
				action: #openOptions;
				enabled: true;
				yourself };
		yourself