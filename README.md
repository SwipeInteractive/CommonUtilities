# CommonUtilities
A group of utility and convenience classes to help with common use cases to be used across project. 

## Core Data

A group of convenience methods to make it easier to save, retrieve and query objects in core data

## Collections

Default reuseIdentifier and a convenience method to register cell nibs in collection views:

`collectionView.registerCell(ofType: ImageCell.self)`


## Storyboard

Convenience initialiser for storyboards:

``` 
let mainStoryboard = UIStoryboard(storyboard: .main)
let detailViewController: DetailViewController = main.instantiateViewController()
```

# Views

Convenience intialiser for instantiating views from nibs

` let customView: CustomView = UIView.loadFromNib()`
