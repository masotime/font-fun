# Font Sandbox

Trying to add custom fonts into an iOS app. I found [a tutorial][1] on the Internet which covered the basics pretty well with regards to importing and registering the font resource into the application. There's [another tutorial][3] which seems to be pretty clear as well.

Now moving on to trying to make it easier to specify the font within the Storyboard. This [stack overflow][2] link will hopefully be useful.

## Line spacing

I managed to set the custom font correctly by implementing a custom category. That was simple and elegant enough.

It seems now I have issues with the line spacing (I'm surprised that this is not available by default). I'll see what I can do about it.

* Need to understand what I'm dealing with - [Categories in Objective C][4]
* Subclassing doesn't seem to work nicely with User Defined Runtime attributes - currently reading [this][5].
* This looks like it might be useful: [SSToolkit][6]

Ultimately I ended up with the subclassing solution. Defined user properties - I had to skip synthesizing and manually implement it, but I think either way it wouldn't work, because styleString is invoked before the user-defined properties and applied, and there doesn't seem to be a way to "refresh" the view, so it looks like the style will need to be hardcoded inside the code, unless I want to use customized paragraphs.

Actually that might be a good idea.

Or perhaps I should simply go with UIWebView.

## UI Tab

I didn't expect the bottom UI Tab to be so difficult to customize.

* [Customizing the UI Tab Bar in iOS 5 and 6][7]
* [Custom colors in UITabBar][8]

## "Could not instantiate Class named NSLayoutConstraint"

This is an issue when running in iOS 5.

![](http://i.stack.imgur.com/s0orB.gif)

## Random Learning bits

* [padding and width][9]
* [How to add a new tab screen][10]

[1]: http://www.practicalentrepreneur.com/how-to-use-a-custom-font-in-xcode-4-5-ios-6-0/
[2]: http://stackoverflow.com/questions/9090745/custom-font-in-a-storyboard
[3]: http://adoptioncurve.net/archives/2012/06/adding-non-standard-fonts-to-ios5-apps/
[4]: http://developer.apple.com/library/ios/#documentation/cocoa/conceptual/ProgrammingWithObjectiveC/CustomizingExistingClasses/CustomizingExistingClasses.html
[5]: http://twoshotsofcocoa.com/?p=70
[6]: https://github.com/samsoffes/sstoolkit
[7]: http://blog.erikvdwal.nl/blog/2012/09/25/customizing-the-uitabbar-in-ios-5-and-ios-6/
[8]: http://stackoverflow.com/questions/675433/custom-colors-in-uitabbar
[9]: http://stackoverflow.com/questions/5219175/width-100-padding
[10]: http://stackoverflow.com/questions/10334215/xcode-how-to-add-new-tab-screen-in-ios5-storyboard