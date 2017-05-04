as yet unclassified
search: aString

	^ (super search: aString), {
		HelloItem action: 'Search Selector' label: aString do: [(MessageNames methodBrowserSearchingFor: aString) openInWorld] score: 0}