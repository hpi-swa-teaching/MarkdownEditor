tests - window
testCreateNewEditorInstanceInWorld

	| windowsBefore windowsAfter |

	windowsBefore := (World submorphs select: [:morph | morph model isKindOf: MarkdownEditor]). 
	editor createNewInstance.
	windowsAfter := (World submorphs select: [:morph | morph model isKindOf: MarkdownEditor]).
	
	self assert: (windowsAfter size - windowsBefore size = 1).
	windowsAfter do: [:window_ | window_ model handleClose. window_ delete]