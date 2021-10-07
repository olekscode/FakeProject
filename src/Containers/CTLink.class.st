Class {
	#name : #CTLink,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextLink'
	],
	#category : #Containers
}

{ #category : #accessing }
CTLink >> nextLink [

	^ nextLink
]

{ #category : #accessing }
CTLink >> nextLink: anObject [

	nextLink := anObject
]

{ #category : #accessing }
CTLink >> value [
	
	^ value
]

{ #category : #accessing }
CTLink >> value: anObject [

	value := anObject
]
