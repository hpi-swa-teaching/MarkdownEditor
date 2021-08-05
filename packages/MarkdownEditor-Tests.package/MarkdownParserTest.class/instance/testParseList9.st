tests - lists
testParseList9

    | output document list listItem paragraph listItem2 listItem3 paragraph2 paragraph3 paragraph4 listItem4 |
    output := parser parse: '- foo
 - bar
  - baz
   - boo'.
    list := MarkdownList new.
    listItem := MarkdownListItem new.
    listItem2 := MarkdownListItem new.
    listItem3 := MarkdownListItem new.
    listItem4 := MarkdownListItem new.
    paragraph := MarkdownParagraph new.
    paragraph2 := MarkdownParagraph new.
    paragraph3 := MarkdownParagraph new.
    paragraph4 := MarkdownParagraph new.
    document := MarkdownDocument new
        startPosition: 1;
        endPosition: 29;
        beClosed;
        children: (OrderedCollection newFrom: {list});
        yourself.
    list 
        container: document;
        startPosition: 1;
        endPosition: 29;
        beClosed;
        children: (OrderedCollection newFrom: {listItem. listItem2. listItem3. listItem4});
        indentation: 5;
        listMarker: '-';
        beUnordered.
    listItem 
        container: list;
        startPosition: 1;
        endPosition: 6;
        innerLine: 'foo', Character cr;
        beClosed;
        children: (OrderedCollection newFrom: {paragraph});
        beUnordered;
        listMarker: '-';
        indentation: 2.
    paragraph 
        container: listItem;
        startPosition: 3;
        endPosition: 6;
        innerStartPosition: 8;
        innerLine: 'foo', Character cr;
        inlineElements: (MarkdownLinkedList newFrom: 
            {MarkdownString newFrom: 'foo' startingAt: 3}).
    listItem2
        container: list;
        startPosition: 7;
        endPosition: 13;
        innerLine: 'bar', Character cr;
        beClosed;
        children: (OrderedCollection newFrom: {paragraph2});
        beOrdered;
        listMarker: '.';
        indentation: 3.
    paragraph 
        container: listItem;
        startPosition: 3;
        endPosition: 6;
        innerStartPosition: 8;
        innerLine: 'foo', Character cr;
        inlineElements: (MarkdownLinkedList newFrom: 
            {MarkdownString newFrom: 'foo' startingAt: 3}).            
    self assert: document equals: output