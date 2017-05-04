as yet unclassified
keyboardFocusChange: weHaveFocus

	weHaveFocus ifFalse: [self triggerCancelled].

	super keyboardFocusChange: weHaveFocus