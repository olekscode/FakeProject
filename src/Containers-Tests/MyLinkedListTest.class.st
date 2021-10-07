Class {
	#name : #MyLinkedListTest,
	#superclass : #TestCase,
	#traits : 'TContainerTests',
	#classTraits : 'TContainerTests classTrait',
	#category : #'Containers-Tests'
}

{ #category : #initialization }
MyLinkedListTest >> setUp [

	super setUp.
	container := MyLinkedList new.
]
