# "Kaz's Knickers" (pol. "Gacie Kaza")
*Silly Venture 2021 Atari VCS/A8 GAME COMPO ENTRY*

The title is an arcade game (duh?). I wanted it to be very colourful and dynamic - but at the same time very simple. It is representative of the "endless runner" genre and my first production for the Atari 2600. I recommend the NTSC TV format - I liked this colour palette better, the PAL60 format after the colour mapping was more dimmed.

Let the history of the production's theme remain a secret. The title character - Kaz, is precisely the well-known Kaz from AtariOnline.pl. The title is to commemorate his contribution as a history researcher, the difficulties faced and even a particular event, in a humorous way, without mocking or ridiculing. Of course, everything took place with consent and even the clear and active objection of the main character (joke).

![game screenshot 01](https://raw.githubusercontent.com/michalkolodziejski/verbose-happiness/main/_release/Kaz's%20Knickers%20-%2001.png)
![game screenshot 02](https://raw.githubusercontent.com/michalkolodziejski/verbose-happiness/main/_release/Kaz's%20Knickers%20-%2002.png)
![game screenshot 03](https://raw.githubusercontent.com/michalkolodziejski/verbose-happiness/main/_release/Kaz's%20Knickers%20-%2003.png)
![game screenshot 04](https://raw.githubusercontent.com/michalkolodziejski/verbose-happiness/main/_release/Kaz's%20Knickers%20-%2004.png)
![award 01](https://raw.githubusercontent.com/michalkolodziejski/verbose-happiness/main/_release/265198276_1977975165722177_5321196020573748428_n.jpeg)
![award_02](https://raw.githubusercontent.com/michalkolodziejski/verbose-happiness/main/_release/265297630_873218290043350_6043312988164143035_n.jpg)

## Creditz
- `GFX` has been ripped from an Atari 2600 Pitfall game, but with adapted color grading to my favour.
- `MUSIC` by Fragmare (drums track part from "Devils Crush" - sample from AA page https://atariage.com/forums/topic/250014-tiatracker-a-new-sound-routine-and-sequencer-application/page/4/)
- `IDEA and CODE` by Michał "Misza" Kołodziejski/AOL

## How to play?
- JPF (JUST PRESS FIRE)
- PLEASE BE EXCITED

## Greetz
- `Tomasz 'TDC' Cieślewicz`, for not letting the 90s go out of our minds, and inspiration to "blink those colors professionally",
- `Fragmare`, for his excellent drums track,
- `Marcin 'Whip' Łapiński`, for challenging me with Atari 2600 programming, 
- `Kamil 'Gorgh' Trzaska`, for inspiration and infinite imagination,
- `Mono`, for simply being there and letting us warm in the grace of your knowledge,
- `Kaz`, for everything else
- `all the fellows Atarians and other retro freaks` not mentioned here - keep up the good work!

## Boring technical stuff
- the game should work on a stock console (I also checked on `MIST` core `a2600_201121.rbf` - it works without any problems),
- the game uses 4 banks of 4 kilobytes,
- the game does NOT use special banking schemes,
- the game does NOT use special chips (emulated or real placed in a cartridge) DPC type,
- the game draws 3 sprites (1 standard player 0 60Hz, two sprites interwoven pants and 30Hz trash cans),
- the game displays a lot of colors (some even as befits an Atari - simultaneously and practically in the same line),
- the game ONLY supports the joystick in port A,
- the game does not support paddles,
- the game does not have easter-eggs (it's not this holidays!),
- go from the GAME OVER screen to the title screen by executing WARM BOOT.

## Software components used
- `Batari Basic v1.5` by Fred "Batari" Quimby [link](https://github.com/sehugg/batariBasic)
- `TIATracker` [link](https://battleofthebits.org/lyceum/View/TIATracker/)
- `Titlescreen mini kernel` [link](https://atariage.com/forums/topic/169819-the-titlescreen-kernel/)

## Even more boring technical stuff aka "How to build it up alltogether"
- install `Visual Studio Code` [link](https://code.visualstudio.com/)
- install `Atari Dev Studio VSCode extension` [link](https://marketplace.visualstudio.com/items?itemName=chunkypixel.atari-dev-studio#:~:text=Atari%20Dev%20Studio%20is%20an,straight%20after%20installing%20the%20extension.)
- load and build `KazKnickers.bas`

## History
2021-12-15

* Initial version.

## Problems?
[Submit an issue](https://github.com/michalkolodziejski/verbose-happiness/issues).
