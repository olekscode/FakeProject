Class {
	#name : #MyLinkedList,
	#superclass : #MyContainer,
	#instVars : [
		'head',
		'tail'
	],
	#category : #Containers
}

{ #category : #adding }
MyLinkedList >> asArray [

	| contents current |
	contents := OrderedCollection new.
	current := head nextLink.
	
	[ current isNil ] whileFalse: [ 
		contents add: current value.
		current := current nextLink ].
	
	^ contents asArray
]

{ #category : #adding }
MyLinkedList >> at: aNumber [

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
MyLinkedList >> initialize [
	super initialize.
	head := MyLink new.
	tail := head.
]

{ #category : #adding }
MyLinkedList >> insert: anObject [

	| link |
	
	link := MyLink new
		value: anObject;
		yourself.
		
	tail nextLink: link.
	tail := link.
]

{ #category : #adding }
MyLinkedList >> remove: anObject [

	| current |
	current := head.
	
	[ current nextLink isNil ] whileFalse: [
		current nextLink value = anObject ifTrue: [ 
			current nextLink: current nextLink nextLink.
			^ anObject ].
	
		current := current nextLink ].
]

{ #category : #accessing }
MyLinkedList >> size [
	
	| count current |
	count := 0.
	current := head.
	
	[ current = tail ] whileFalse: [ 
		count := count + 1.
		current := current nextLink ].
	
	^ count
]
