A MarkdownLinkedList is a LinkedList. 

With linkOf: ifAbsent: it is possible to get the link of the exact Object. Use this list if you are planning to insert objects into a list which can have the same values for their attributes (so = will return true even if these are not the aczually the same objects)

markdownIndexOf gets the index of the exact element in a list.

copiedFrom:to: and replacedFrom:to: are just small helpers to return a MarkdownLinkedList instead of another Collection.