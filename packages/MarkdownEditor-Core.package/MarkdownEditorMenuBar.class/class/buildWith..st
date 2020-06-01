as yet unclassified
buildWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			aBuilder pluggableButtonSpec new
				label: 'new';
				model: self;
				enabled: true;
				action: 'MarkdownEditor new' asSymbol;
				yourself.
			aBuilder pluggableButtonSpec new
				label: 'save';
				model: self;
				enabled: false;
				action: #showNextTip;
				yourself.
			aBuilder pluggableButtonSpec new
				label: 'options';
				model: self;
				action: #openSettings;
				enabled: true;
				yourself };
		yourself