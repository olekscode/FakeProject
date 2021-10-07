Class {
	#name : #CTArray,
	#superclass : #CTContainer,
	#instVars : [
		'contents'
	],
	#category : #Containers
}

{ #category : #adding }
CTArray >> add: anObject [

	contents add: anObject
]

{ #category : #converting }
CTArray >> asArray [ 

	^ contents asArray
]

{ #category : #adding }
CTArray >> at: aNumber [

	^ contents at: aNumber
]

{ #category : #initialization }
CTArray >> initialize [
	super initialize.
	contents := OrderedCollection new.
]

{ #category : #adding }
CTArray >> remove: anObject [

	contents remove: anObject
]

{ #category : #accessing }
CTArray >> size [ 
	^ contents size
]
