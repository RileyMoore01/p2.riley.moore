<h1><strong>Part C:</strong></h1>
<br />

<h3>Sketch</h3> <br />
<p>
    <img src="main/SmartMirrorSketch.jpg" width="1020" height="640" />
</p>
<p>
    My sketch above includes various interactive features that I will explain in more depth below. I choose this design due to the clarity of the user's relfection
    in the mirror and accessibility of the features offered to the user which include the following.
</p>

<p>
    First we will start with the weather icon and tempature display. If you tap on the weather icon it will bring up a previously not displayed widget
    showing the current weather of that location. This widget can only be opened or shown if the menu icon is closed. This restricts the user to be able 
    to clutter the screen and have difficulty nagivating the interface. Another small feature is that you can switch between farienheit and celcuis by
    touching where the current tempature is displayed.
</p>

<p>
    Secondly, we have the time display and the clock icon in the top right corner of the interface. The time label displays the current time. Where as if
    you touch the clock icon, a calendar will appear circling the current date.
</p>

<p>
    Third, located in the bottom right hand of the screen we have a settings icon. If the user touches this icon, a new settings widget will appear in the
    middle right of the interface allowing the user to set a lock time, choose what socials they wish to appear, and change what news station they would
    like to be informed by.
</p>

<p>
    Lastly, we have a nested functionailty. The menu Icon will  bring up 4 different icons to the right of it, where the menu icon is located in the bottom
    left corner and stationary. When the menu is opened, the weather widget will disappear as previously explained. The four new icons that will be shown
    are to represent {Socials, News, Health, Messages}. The socials will show the user selected social platforms they would like to use such as Reddit, 
    Facebook, or Instagram. From there they will be able to select one of those and a new widget where the weather widget is located (middle left) and the
    user will then be able to access their social account. The same concept and widget placement follows for News. Next, when the user touches the Health
    icon a widget will appear in the same place as the last and show the users total steps, weight, and time slept for that current day and the past day.
    For the text messages, the widget will be in the middle left of the screen and allow the user to access their text messages in real time.
</p>

<p>
    The logic for all of these features on their icons follow as a touch to open, and another to close that widget. Some features are restriced to be opened
    at the same time as previously explained to ensure the user is not able to clutter the screnn.
</p>


<br />

<h1><strong>Part B:</strong></h1>
<br />

<p>
    After implementating the sketch to real life, there were some changes made. To start the news, socials, and weather widgets are now display at the bottom 
    right of the screen to free up some of the left and center out the middle so the user is still able to clearly see themselves. However the health widget is 
    located in the same place once the user requests it to appear. Why I left this widget is when the user is looking at it, there is logic to not allow widgets
    on the right side be open. This way the user is able to have a full body view on the left side of the mirror. My thought process is the user will most likely
    want to evaluate their full body when considering their own health statistics for the current and past day. Something that still needs to be implemeneted is 
    the weather api call. As of now, the weather widget just shows a hard coded image of Lubbocks weather. 
</p>

<p>
    Another major change is there is no longer a settings button. I was going to implemenet a whole login system, however I replaced this with a fingerprint icon.
    I figure if this mirror was actually brought to life, it was be much easier on the user to just use a finger print scanner rather than traversing throuhg a 
    whole login system on a smart mirrior. The fingerprint scanner is not at all hard to implement in the project so that is why there is just a fingerprint icon
    that shows and you must press to access the screen. I simply see this as a hardware issue rather than software so will approach it as such.
</p>

<h1><strong>Part A:</strong></h1>
<br />
