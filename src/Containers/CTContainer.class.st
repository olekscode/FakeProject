Class {
	#name : #CTContainer,
	#superclass : #Object,
	#category : #Containers
}

{ #category : #adding }
CTContainer >> add: anObject [

	self subclassResponsibility
]

{ #category : #adding }
CTContainer >> addAll: aCollection [

	aCollection do: [ :each | self add: each ]
]

{ #category : #adding }
CTContainer >> at: aNumber [

	self subclassResponsibility
]

{ #category : #adding }
CTContainer >> isEmpty [

	^ self size = 0
]

{ #category : #adding }
CTContainer >> remove: anObject [

	self subclassResponsibility
]

{ #category : #adding }
CTContainer >> size [

	self subclassResponsibility
]
