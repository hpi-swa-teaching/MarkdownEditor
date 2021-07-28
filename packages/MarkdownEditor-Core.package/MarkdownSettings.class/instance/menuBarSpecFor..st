building
menuBarSpecFor: aBuilder

	^ aBuilder pluggablePanelSpec new
		 layout: #horizontal;
		 children: (self menuBarContentSpecFor: aBuilder);
		 yourself