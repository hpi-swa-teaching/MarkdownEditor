building
buildApplyBarWith: aBuilder

	^  aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: (self applybarContent: aBuilder);
		yourself