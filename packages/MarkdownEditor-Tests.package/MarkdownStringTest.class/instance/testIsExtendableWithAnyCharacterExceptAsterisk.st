tests - recognition
testIsExtendableWithAnyCharacterExceptAsterisk

	(Character allByteCharacters copyWithoutAll: {$* . $[ . $] . $( . $) . $~ . $< . $>})
		do: [:character | | token |
			token := MarkdownString newFor: 'a' at: 1.
			self assert: (token isExtendableWith: character)]