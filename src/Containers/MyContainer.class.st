Class {
	#name : #MyContainer,
	#superclass : #Object,
	#category : #Containers
}

{ #category : #adding }
MyContainer >> at: aNumber [

	self subclassResponsibility
]

{ #category : #enumerating }
MyContainer >> collect: aBlock [

	| newContainer |
	newContainer := self class new.

	self do: [ :each |
		newContainer insert: (aBlock value: each) ].
	
	^ newContainer
]

{ #category : #enumerating }
MyContainer >> do: aBlock [

	1 to: self size do: [ :i |
		aBlock value: (self at: i) ]
]

{ #category : #adding }
MyContainer >> insert: anObject [

	self subclassResponsibility
]

{ #category : #adding }
MyContainer >> insertAll: aCollection [

	aCollection do: [ :each | self insert: each ]
]

{ #category : #adding }
MyContainer >> isEmpty [

	self subclassResponsibility
]

{ #category : #adding }
MyContainer >> remove: anObject [

	self subclassResponsibility
]

{ #category : #adding }
MyContainer >> size [

	self subclassResponsibility
]
