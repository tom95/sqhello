as yet unclassified
search: aString

	^ self filter: Smalltalk allClasses by: aString action: 'Open Class' labelDo: #name do: [:class | SystemBrowser default open setClass: class]