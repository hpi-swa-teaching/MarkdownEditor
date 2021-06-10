as yet unclassified
parse: aString

    self document: MarkdownDocument new.
    aString lineIndicesDo: [:start :endWithoutDelimiters :end | |currentLine| 
        currentLine := (aString copyFrom: start to: endWithoutDelimiters)
        self 
            closeOpenBlocks: currentLine;
            createNewBlocks: currentLine;
            addTextToLastOpenBlock: currentLine.].