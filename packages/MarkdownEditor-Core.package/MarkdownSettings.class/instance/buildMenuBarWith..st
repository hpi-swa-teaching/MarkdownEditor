building
buildMenuBarWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		 layout: #horizontal;
		 children: (self menubarContent: aBuilder);
		 yourself