building
buildApplyBarWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		 layout: #horizontal;
		 children: (self applyBarContent: aBuilder);
		 yourself