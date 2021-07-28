building
applyBarSpecFor: aBuilder

	^ aBuilder pluggablePanelSpec new
		 layout: #horizontal;
		 children: (self applyBarContentSpecFor: aBuilder);
		 yourself