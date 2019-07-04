# Contributing and Development

## Code Style

### Message selectors

1. Put an empty line after the message selector.
    ```smalltalk
    toggleDirection

        self direction: self direction toggled
    ```
2. Name the expected type of a parameter.
    ```smalltalk
    board: anILTrain

        anILTrain add: self
    ```
    If it is a collection, name its contained type.
    ```smalltalk
    lines: aCollectionOfILTLines

        lines := aCollectionOfILTLines
    ```
3. Put spaces in the interior of local variables declaration.
    ```smalltalk
    shouldBoard: anILTPassenger

        | changesForStation changesForTrain |
        changesForStation := self stationPathcreator amountOfChangesFor: anILTPassenger.
        changesForTrain := self trainPathcreator amountOfChangesFor: anILTPassenger.
        ^ changesForTrain < changesForStation
    ```

### Operators

1. Put a space after the return caret.
    Do not add a trailing `.` for the return statement.
    ```smalltalk
    color

        ^ color
    ```
2. Use `{}` syntax for arrays.
    Put a space after, but not before `.` separators.
    Add no `.` for the last element.
    ```smalltalk
    lineColors

        ^ {'#55A822'. '#FC3200'. '#00846B'. '#FFD900'.
            '#602C15'. '#694A92'. '#3286B3'. '#09387C'}
    ```
    When your array only contains symbols, prefer `#()`.
    ```smalltalk
    expectedFailures

        ^ #(testScenarioRushHour testScenarioStrike)
    ```
3. Put a space after, but not before `,`.
    ```smalltalk
    updateHeadingToSign

        self headingToSign: self name, ' > ', self destination
    ```
4. Put no spaces around `->`.
    ```smalltalk
    spawnProbabilities

        ^ Dictionary newFrom: {#circle->6. #triangle->4. #square->2. #cross->1}
    ```
5. Put a space before and after all other binary operators,
    including assignment, arithmetic and comparison.
    ```smalltalk
    color: aColor

        color := aColor
    ```

### Categories

1. Access instance variables only via accessors which live in `accessors`.
2. Put `initialize` in the category `initialize-release` for instances and `class initialization` for classes.

## Common Pitfalls

- Always make sure that `privateStyle:` of a `TextStyler`
    never modifies the `string` part of the `Text`.
    In our current architecture, this also means that blocks with `asText`
    must return a `Text` which matches their `content`. \
    **Danger:** This can cause your image to freeze.
- Check after renaming methods that the old one was deleted.
- Check after renaming classes that all old references are updated.
    Sometimes, your image might transparently use the new class
    when old references are encountered, but the source code will remain unchanged.
- When you commit non-Squeak files into your git,
    use the GitBrowser in Squeak with care, as it is prone to remove those changes.
    Consider merging on the commandline.
