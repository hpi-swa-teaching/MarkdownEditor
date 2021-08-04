building
menuBarContentSpecFor: aBuilder
			
	^ {self menuBarItemFor: aBuilder called: 'General'.
		  self menuBarItemFor: aBuilder called: 'Headings'.
		  self menuBarItemFor: aBuilder called: 'Lists'}