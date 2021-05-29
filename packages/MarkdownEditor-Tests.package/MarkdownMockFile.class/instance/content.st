accessing
content

	^ content ifNil: [content := self class defaultContent]