# splashtag

This is a custom liquid tag for using John Sundell's excellent Swift syntax highlighter [Splash](https://github.com/JohnSundell/Splash) with your Jekyll blog.

### Prerequisites

+ A global install of the SplashHTMLGen tool on the same computer as your Jekyll installation.

### Installation

+ Put the splashtag.rb file in the _plugins folder of your Jekyll repository
```_plugins/splashtag.rb```
+ Put the _splash.css file in the _sass folder of your Jekyll repository
```_sass/_splash.css```

### Usage

```
Swift is a great language

{% splash %}
guard let user = User(name: "Dohn Joe", emailAddress: validAddress) else {
    return
}
{% endsplash %}
```

An example of this tag in action can be seen [here](https://mannberg.github.io/2018/10/07/testing-your-ui-using-method-swizzling.html)
