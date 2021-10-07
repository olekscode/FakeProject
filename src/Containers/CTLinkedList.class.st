Class {
	#name : #CTLinkedList,
	#superclass : #CTContainer,
	#instVars : [
		'head',
		'tail'
	],
	#category : #Containers
}

{ #category : #adding }
CTLinkedList >> add: anObject [

	| link |
	
	link := CTLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.
]

{ #category : #adding }
CTLinkedList >> asArray [

	| contents current |
	contents := OrderedCollection new.
	current := head nextLink.
	
	[ current isNil ] whileFalse: [ 
		contents add: current value.
		current := current nextLink ].
	
	^ contents asArray
]

{ #category : #adding }
CTLinkedList >> at: aNumber [

	| index current |
	index := 1.
	current := head nextLink.
	
	[ index = aNumber ] whileFalse: [ 
		current ifNil: [ self error: 'Overflow' ].
		index := index + 1.
		current := current nextLink ].
	
	^ current value
]

{ #category : #initialization }
CTLinkedList >> initialize [
	super initialize.
	head := CTLink new.
	tail := head.
]

{ #category : #adding }
CTLinkedList >> remove: anObject [

	| current |
	current := head.
	
	[ current nextLink isNil ] whileFalse: [
		current nextLink value = anObject ifTrue: [ 
			current nextLink: current nextLink nextLink.
			^ anObject ].
	
		current := current nextLink ].
]

{ #category : #accessing }
CTLinkedList >> size [
	
	| count current |
	count := 0.
	current := head.
	
	[ current = tail ] whileFalse: [ 
		count := count + 1.
		current := current nextLink ].
	
	^ count
]
