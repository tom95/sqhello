as yet unclassified
search: aString
	" override this function to dynamically populate results. return a collection of HelloItems's "

	^ self filter: defaultItems by: aString action: [:item | item action] labelDo: #label do: #execute