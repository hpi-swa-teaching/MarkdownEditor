tests - window
testCreateNewEditorInstanceInWorld

	| editor window windows |
	
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor createNewInstance.
	windows := (World submorphs select: [:morph | morph model isKindOf: MarkdownEditor]). 
	self assert: (windows size = 3).
	windows do: [:window_ | window_ delete]