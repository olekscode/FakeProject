Trait {
	#name : #TContainerTests,
	#instVars : [
		'container'
	],
	#category : #'Containers-Tests'
}

{ #category : #tests }
TContainerTests >> testAdd [
	container add: 1.
	container add: #hello.
	
	self assert: container asArray equals: #(1 hello).
]

{ #category : #tests }
TContainerTests >> testAddAll [
	container addAll: #(1 hello).
	self assert: container asArray equals: #(1 hello).
]

{ #category : #tests }
TContainerTests >> testAt [
	container addAll: #(1 hello).
	
	self assert: (container at: 1) equals: 1.
	self assert: (container at: 2) equals: #hello.
]

{ #category : #tests }
TContainerTests >> testIsEmpty [
	self assert: container isEmpty.
	container add: 1.
	self deny: container isEmpty.
]

{ #category : #tests }
TContainerTests >> testRemove [
	container addAll: #(1 hello).
	container remove: #hello.
	self assert: container asArray equals: #(1).
]

{ #category : #tests }
TContainerTests >> testSize [
	container addAll: #(1 hello world).
	self assert: container size equals: 3.
]

{ #category : #tests }
TContainerTests >> testSizeOfEmpty [
	self assert: container size equals: 0
]
