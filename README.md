# DynamicHeightCustomView
Dynamic height for custom view using stack view. Custom view is made programatically.

![DynamicHeightCustomView-Demo](/DynamicHeightCustomView-Demo.gif?raw=true "DynamicHeightCustomView-Demo")


## Getting Started

- Create a custom view and add desired views and mark the class IBDesignable.
- Embedd all views in stackview. 
- Add all constraints accordingly.
- Now open your view controller in Storyboard, add a normal UIView. Add Leading, Trailing, Top constraints.
- With the view selected, go to the Identity Inspector and change the Class to CustomView.
- You should see the customview changes here with taking desired height.
