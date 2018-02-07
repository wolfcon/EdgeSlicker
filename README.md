# EdgeSlicker
Hide tab bar or other similar view on edge

## Todo
1. refactor (less injection)
2. repair the jumping when drag up and down

## Usage

#### Define a var that used to mark the position for slicker.

```objective-c
@property (assign, nonatomic) CGPoint currentScrollOffset;
```

#### ScrollViewDelegate

- scrollViewDidScroll

```objective-c
if ([scrollView isEqual:<#your scroll view responding#>]) {
    [<#your Tabbar? or other view#> viewDidRespondAutoHideWhenScrollView:scrollView 
            beginDraggingContentOffset:self.currentScrollOffset];
}
```

- scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
```objective-c
if ([scrollView isEqual:<#your scroll view responding#>]) {
    [<#your Tabbar? or other view#> respondingScrollViewDidEndDragging];
}
```

- scrollViewWillBeginDragging:(UIScrollView *)scrollView {

```objective-c
if ([scrollView isEqual:<#your scroll view responding#>]) {
    self.currentScrollOffset = scrollView.contentOffset;
    
    if (scrollView.contentOffset.y < 0) {
        self.currentScrollOffset = CGPointZero;
        return;
    }
}
```

