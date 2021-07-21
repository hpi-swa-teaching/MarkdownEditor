tests - menu
testDocument

	| document |
	editor textStyler document: MarkdownDocument new.
	document := editor document.
	self assert: MarkdownDocument equals: document class.
	self assert: editor textStyler document equals: document