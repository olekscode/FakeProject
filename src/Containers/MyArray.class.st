Class {
	#name : #MyArray,
	#superclass : #MyContainer,
	#instVars : [
		'contents'
	],
	#category : #Containers
}

{ #category : #converting }
MyArray >> asArray [ 

	^ contents asArray
]

{ #category : #adding }
MyArray >> at: aNumber [

	^ contents at: aNumber
]

{ #category : #initialization }
MyArray >> initialize [
	super initialize.
	contents := OrderedCollection new.
]

{ #category : #adding }
MyArray >> insert: anObject [

	contents add: anObject
]

{ #category : #testing }
MyArray >> isEmpty [

	^ self size = 0
]

{ #category : #adding }
MyArray >> remove: anObject [

	contents remove: anObject
]

{ #category : #accessing }
MyArray >> size [ 
	^ contents size
]
