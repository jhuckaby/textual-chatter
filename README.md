# Chatter for Textual

Chatter is a Textual IRC theme (style) with a fixed width nickname gutter, smart time stamps, automatic light/dark mode switching, Emoji emotes and an auto-correction mechanism.  Requires [Textual for OS X](http://www.codeux.com/textual/) which is available on the [Mac App Store](https://itunes.apple.com/us/app/textual-irc-client/id403012667?mt=12).  It is based on the [Skylight](https://github.com/mintchaos/Skylight) theme, but has been updated to Textual Style V2 format, for supporting Textual v4.1.4 and up.

Here are some screenshots:

![Chatter Screenshots](http://pixlcore.com/software/textual-chatter/screen-dual.png)

You can install Chatter by downloading and running the `.pkg` file:

http://pixlcore.com/software/textual-chatter/TextualChatterInstaller.pkg

Then select it as your active theme (style) by going to Textual Preferences → Style.

## Open Source

Chatter is open source, MIT licensed, and available on GitHub:

https://github.com/jhuckaby/textual-chatter

# Features

## Auto Light and Dark Mode Switching

Chatter will automatically switch its color scheme from light to dark based on the "Darken main window colors" setting, found in Textual Preferences → Interface → General:

![Textual Prefs Screenshot](http://pixlcore.com/software/textual-chatter/prefs-screen-1x.png)

## Auto Correction System

Chatter has an automatic correction system that works by looking for messages that start or end with an asterisk (which many people do anyway).  It then uses an algorithm to try to figure out which word(s) you meant to correct, and actually makes the correction inline, highlighting it yellow.  For example, if you typed these two messages:

```
	Now is the time for all good men to come to the aid of their county.
	*country
```

Chatter would assume `*country` is a correction, and locate the best-matching word(s) in your previously typed messages in the same channel.  In this case it would correct the word `county`.

Note that only people who have the Chatter theme will "see" the corrections being made, as they are done at render time inside Textual.  Other users will just see the `*country` message on its own line.

### Regex Replace

Chatter also looks for the standard Perl-style regular expression match + replace syntax, and applies the correction to your previously typed messages.  The syntax is: `s/MATCH/REPLACE/`.  So for example, if you typed these two messages:

```
	Now is the time for all good men to come to the aid of their county.
	s/county/country/
```

Chatter would assume `s/county/country/` is a correction, and locate matching word(s) in your previously typed messages in the same channel.  In this case it would change the word `county` to `country`.

### Single Character Auto-Append

How many times do you see people leaving a single character off the end of a sentence, then typing it on a subsequent line?  Chatter detects this, and auto-appends the character to the previous line, highlighting it in yellow.

## Emoji Emotes

Chatter will show Emoji for common emote character sequences.  Here is the conversion table:

![Emoji Emote Map](http://pixlcore.com/software/textual-chatter/emoji-map.png)

Conversions will only take place if the character sequence is surrounded by whitespace or nothing.  So you should never see accidental emotes show up in URLs, etc.

## Smart Time Stamps

Chatter hides all message time stamps unless the minute changes.  However, you can roll your mouse over the right-hand gutter to see a tooltip of the selected message's timestamp, even if it is invisible.

This is based on a feature in [Skylight](https://github.com/mintchaos/Skylight).

## Repeat Authors

Chatter hides the nickname for repeated subsequent messages from the same author.

This is based on a feature in [Skylight](https://github.com/mintchaos/Skylight).

## Fixed Width Nickname Gutter

Chatter has a fixed width area for nicknames, which is much better for reading chats, in my opinion.  If nicknames are too long to fit, they are chopped with an ellipsis.

This is based on a feature in [Skylight](https://github.com/mintchaos/Skylight).

## Copyright and Legal

Chatter for Textual is copyright (c) 2013 - 2014 by Joseph Huckaby and PixlCore.com.  It is released under the MIT License (see below).

Note that this software ships with some bundled 3rd party software libraries:

* Contains a bundled copy of jQuery: http://jquery.org/license
* Also contains: [levenshtein.js](https://gist.github.com/andrei-m/982927), (c) 2011 Andrei Mackenzie, MIT Licensed

### MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
