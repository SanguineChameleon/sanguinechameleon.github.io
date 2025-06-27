---
layout: post
title: "My YouTube Videos"
---

This post contains behind-the-scenes content for all the [YouTube videos](https://www.youtube.com/@SanguineChameleon) I've made so far. Commentaries for earlier videos were written much later after their release, so I might not remember everything about them.

Some videos have their own write-up in a separate post. That doesn't necessarily mean that they're better. They just deserve their own space where I can write in more detail. The rest of the videos are listed here, in chronological order.

---

{% for post in site.posts reversed %}

{% if post.tags contains "youtube" %}

{% include post_item.html post=post %}

{% endif %}

{% endfor %}

---

## [F0UR1ER](https://www.youtube.com/watch?v=ByXFCtlFo0Q) {#fourier}

This was the first piece of music I uploaded to the channel. I'd made a few songs before, but none were as polished or made in a proper DAW like FL Studio. Even though I'm not that good at making music, I'd say this was a neat first attempt.

I like breakcore, so naturally, I searched `breakcore tutorial fl studio` and went with it. The resulting piece is definitely _not_ breakcore, and to be honest, I'm still not sure what breakcore even is.

The instruments for the melody and chords are all plug-in defaults (I used FLEX). The drums are sampled from a standard breakcore library I found online. They're very harsh-sounding, though I think that's mostly due to me getting the mixing levels wrong. Regardless, I think it adds to the music.

The melody at around 1:16 is actually recycled from an older chiptune song I made. I might release it sometime if I feel like it.

The video was made by recording my laptop screen with a weird frame rate, and playing around with compression settings in ffmpeg. There's no deeper meaning to the title. I just picked something cool-sounding and converted it into leetspeak. The description is a random excerpt from a Wikipedia article.

## [painkillers](https://www.youtube.com/watch?v=oSIrVAbLA9s) {#painkillers}

The second piece of music I uploaded, just a few weeks after F0UR1ER. This time, I wanted to capture the \"loser anime girl\" vibe of breakcore. You know, those songs where the title is something edgy like `life is not the same without you` and the cover is a (probably AI-generated or stolen) picture of an anime girl looking despondent. I weirdly like that genre of breakcore.

I didn't want to lean into the edge too much, so I went with something tamer. \"Painkillers\" popped into my head for no specific reason.

One thing that was direly missing from F0UR1ER was vocals! Our heroine for this song is [Emu Otori](https://www.sekaipedia.org/wiki/Otori_Emu) from Project SEKAI. Now, as mentioned in the description, I don't consume this game in any capacity, but judging from her voice lines and her signature _\"Wonderhoy!\"_, I can tell Emu is a bundle of sunshine. So I put her in an edgy song.

Oh no! The happy-go-lucky character secretly has depression. I love overused tropes.

The vocals are all taken from the game itself, except for the titular _\"Painkillers!\"_ line, which was AI-generated using [ProsekaTTS](https://huggingface.co/spaces/kdrkdrkdr/ProsekaTTS) (unfortunately, it no longer works). Just to clarify, that's not how you actually say "painkillers" in Japanese. It's an approximate phonetic rendering of the English word.

I like the part where her vocals pan between the left and right channels, but if I'm being honest, I probably subconsciously took that idea from another song (possibly [FANTASTIC PHANTASM](https://www.youtube.com/watch?v=dAcOb9zOyAc)?)

The video was made using FL Studio's ZGameEditor Visualizer. The background footage is gameplay from Proseka, chopped up and glitched using [Mosh](https://moshpro.app/). (Sigh, it used to be free. Oh well.)

I didn't have a concrete plan of the "story" for the song. I guess one interpretation could be something like this:

- The fast parts represent the highs of a drug (painkillers, in this case)
- The slow parts represent withdrawal
- The vocals represent auditory hallucinations
- The abrupt end suggests a sudden death, most likely an overdose

But this is a bit contrived and I don't really like analyzing my work like this. You may interpret it however you want.

## [Reality -- Stage Pass](https://www.youtube.com/watch?v=3uWjAylx2Qo) {#reality}

Time for some expert Pump It Up gameplay.

For context, Pump It Up allows players to make their own charts for songs. While most charts are reasonable and fun to play, some are made just for the sake of being hard.

This one, by player J.K.D., is hard in the sense that you have to really stretch your arms and legs, get on all fours, hit notes with your knees, and jump around like you're a frog. It's horrible, but it's also become a classic meme within the community.

Still, some players have shown that you can, in fact, pass this chart. So, I figured, why not? It looked like a fun challenge.

To be precise, since Pump It Up has gone through many versions, I'm not actually playing J.K.D.'s original chart, but a replica of it instead.

As for the gameplay itself, I mostly studied videos online and basically memorized the entire chart. There's not much else to say, other than the fact that my limbs were sore after every practice session. This chart isn't as technically demanding as it is physically demanding, so I think any decent player can do this.

That being said, if you genuinely plan on attempting this, just be aware that you will look like an idiot in a public space, and you will burn through a ton of money with each run. Maybe pick a time when the pros aren't hogging the machine.

Also, looking back at the footage, some of the positions I get into are... a little compromising. Don't think about it too much.

My celebration at the end is cringe but timeless.

## [Gargoyle -- Stage Pass](https://www.youtube.com/watch?v=iYsHQg_StpQ) {#gargoyle}

More expert Pump It Up gameplay. This time, it's actually a difficult chart: a 6-minute beast of a song with constant streams of notes and only a few short breaks in the middle. When I first started playing Pump It Up, this chart looked impossible.

Fast forward to the summer before college. I had a lot of free time, so I decided to practice it.

The main challenge was stamina. To deal with this, I played the chart regularly, maybe even daily. Once I got past the stamina issues though, the rest of the chart is pretty straightforward. Except for one part.

The crossovers from 4:54 onward are brutal, especially since by that point, you've already lost most of your stamina. I debated whether I should just cheat and mash the pattern to save energy (which many players online suggested), but I wanted to give the chart the respect it deserves and play it properly.

Since there's no easy way to practice specific sections of a chart, the way I practiced was by copying the patterns into separate custom charts with gradually increasing BPM. That way, I could really get the crossovers into my muscle memory.

It probably took at least 10 attempts to finally get the full run. Recording was a bit annoying, since I wanted to go early in the morning to avoid disrupting the actual pros. But eventually, I got it!

I remember lying on the pad for a good minute or two afterward. To finish my credit, I had to complete one more song, so I picked a super easy chart and almost died of exhaustion playing it. You are _not_ seeing the footage for that.

To be honest, I have no idea how I pulled this off.

## [clean.str](https://www.youtube.com/watch?v=_ZLL53Uq26k) {#clean}

I set up a tripod in my room and started recording a live feed with my phone, plus a bunch of filters in OBS.

I overlaid some stock VHS footage to get the scanline/static-y effect. The huge timer in the middle is another overlay with a script that tracks the current time. The audio is a reversed and slowed-down version of a signal from the Lincolnshire Poacher numbers station (disc one, track 6 of the The Conet Project).

The title is straightforward: I was recording myself cleaning my room! You can't really see it because of the quality of the footage, but you'll have to trust me on that. I also didn't want a high-quality feed of my room for obvious privacy reasons.

Most of the 12-hour stream is just the timer on a black background. That was when I turned my phone off to go outside.

There used to be another stream (debut_stream.str), but I assume it wasn't archived due to its ~40-hour length. The premise was the same, but it also included some grainy footage outdoors and at an arcade.

I like the vibe the stream gives off. Mildly disturbing, like there's a hidden secret waiting to be uncovered. Like I'm some sort of test subject. But there isn't. Sorry :P

## [cereal.mp4](https://www.youtube.com/watch?v=qzw7Q_v0-t8) {#cereal}

It was dinner time and I wanted cereal. That's it. That's the whole video.

All the grunting, screaming, and cries of anguish are half-genuine. For safety reasons, I cannot recommend eating cereal with your hands while coughing profusely.

Okay, but what do I mean by "half-genuine"? Not sure. "Eating cereal painfully" was an idea that I definitely had, and an idea I definitely went with. It's definitely one of the videos on my channel.

Maybe there's something surreal about watching someone struggle to eat cereal. Maybe there isn't. I dunno, it's not really that deep.

The only valuable thing I can offer is that the video itself was recorded in the same way as clean.str. All the weird filters and effects are added live; I don't have the raw footage.

Clean-up was not fun.

## [mac_and_cheese.mp4](https://www.youtube.com/watch?v=fsRwvvQjUeM) {#mac-and-cheese}

Another food-related video. I went for something more meta this time.

For the sake of overexplaining, here's a summary of the (hopefully straightforward) storyline:

- The main character (from now on referred to as MC, and not to be confused with the actual me) starts a screen recording on his phone.
- MC opens the camera app and shows his room, along with his newest creation: a video of himself eating mac and cheese.
- He takes photos of his laptop screen (presumably for the thumbnail), when an unknown user, `@SufficientGuest9553` (SG), messages him on Discord.
- The messages start out innocuously as compliments of MC's videos, but they quickly become stalker-ish.
- SG says they have MC's passport, and this is confirmed when he checks his drawer and sees that it's gone. Oh no!
- Thinking this is just a prank, MC is about to send an insult... when SG says they can see everything he types.
- Oh dear, SG is in MC's room. MC fails to escape and is presumably ambushed at the end. Whether or not he dies is up to you.

Whew, that sure was a story. It's not that good or scary, and it feels like something a grade schooler would come up with.

That being said, I had a reasonable amount of fun dealing with the technical side of things. Remember that this was a one-man effort. While MC's messages were typed by me, SG's messages were sent using a Python script. The script typed messages in a separate Discord window on my laptop, which is not visible in the video. It was a bit annoying to figure out how to hide it.

The time displayed on the phone is real. I recorded this at 2 in the morning. Sometimes you get the dumbest ideas at night.

**Side note**: You may be wondering how SG messaged MC in the first place. That's because they're both in the official Genshin Impact Discord server. FYI, I don't play that game, but I do read fan fiction. No further comment.

## [Lost Signal](https://www.youtube.com/watch?v=nBxwonLImac) {#lost-signal}

Like I wrote in the description, this song was rotting on my laptop for over a year. Originally, it was just called "Signal", was much faster (200 BPM), and was a lot punchier (think drum and bass). Unfortunately, after finishing the first drop, I didn't know how to finish the rest of the song and left it there. Every now and then I'd come back to brainstorm, but it never really went anywhere.

I'd say the addition of the word "lost" reflects that. The song is a somber acceptance of the fact that the original probably won't ever be released. I also think the abrupt end represents something that feels within reach but you can never quite get to, like nostalgia for days gone by.

I'm getting too sentimental.

For the melody, I used 3x Osc with some basic effects. It's amazing how much the quality of a song improves just by adding some reverb and echo. The vocals are taken from The Lincolnshire Poacher, same as in clean.str. The thumbnail is a picture I took of a sunset, run through an SSTV transmission. The original version also sampled the startup sound of an SSTV signal.
