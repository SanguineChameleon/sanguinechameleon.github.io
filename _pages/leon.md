---
layout: post
title: "About"
---

Hi! I'm SanguineChameleon.

This is my website, where I write about whatever I like, whenever I like.

## Personal Details

This section is here for you to decide whether or not I'm qualified to say what I say.

- <span id="age"></span> My pronouns are he/him.
- I'm from Vietnam, but my English is much better than my Vietnamese.
- My real name is almost impossible to pronounce, so I just go by Leo online.
- I'm a <span id="uni-year"></span> Computer Science student at the National University of Singapore.
- I was a gold medalist at [IOI 2023](https://stats.ioinformatics.org/results/2023).

That's about as much info as I'll give here. If you're curious, you can stalk me further. You have my permission. Just don't show up at my house unannounced.

## Why this website?

When I was younger, I had a bad habit of permanently deleting everything I made online. I think I've reached the age where I can confidently share my thoughts and opinions, however silly they may be.

Also, before this website, I didn't have a proper place to write commentary on the things I made or the things I did. I think my writing will be useful, at least for me and my future self, if not anyone else.

However, this won't be a blog where I write about my daily experiences. I find that kind of journaling pretty exhausting to maintain.

Sometimes I will stumble across a stranger's blog, read a few posts, be mildly entertained, and move on. I hope someone out there has that experience with my blog.

## My Interests

Here's a list of my interests, in (roughly) descending order of relevance.

- **Competitive Programming**

  I'm not nearly as competitive as I used to be, so these days, you're much more likely to find me as a problem setter than as a contestant.

- **Project Euler**

  On October 22, 2025, I completed [all problems]({% post_url 2025-10-22-project-euler-perfection %}) on Project Euler. If you're reading this, either I still have all of them solved, or I'm working on a problem right now.

- **Drawing**

  I recently started learning how to draw! You can browse my work on [Instagram](https://www.instagram.com/sanguinechameleon/) or right [here]({% link _pages/art.md %}) on this site. I try to post when I'm not busy with other things :P

- **Archive of Our Own**
  
  Sometimes I might read (and [write](https://archiveofourown.org/users/SanguineChameleon)) on AO3, especially romantic slash fiction. What can I say? I like seeing people be happy.

- **YouTube**

  I have a [channel](https://www.youtube.com/@SanguineChameleon) that I sporadically upload videos to. I'm definitely not a "YouTuber" by any means. Check out [this page]({% link _pages/youtube.md %}) for more details.

- **Music**

  I don't have a Spotify account or anything like that. I just listen on YouTube, mostly Vocaloid/SynthV/UTAU and rhythm game music.

- **Rhythm games**

  Sometimes I play rhythm games at the nearest arcade. I used to be obsessed with Pump It Up, but now I just go whenever. I also play Taiko no Tatsujin and maimai.

## Contact Me

Despite having a decent presence online, I'm a bit fussy about personal contact.

Assuming we don't already know each other, I'm on Discord at `@sanguinechameleon`.

Otherwise, please do <span style="text-decoration: underline">not</span> contact me anywhere else, including (but not limited to):

- **Content platforms** (e.g. YouTube, Instagram)

  You can comment on my stuff, but please don't reach out to me there.

- **Problem-solving platforms** (e.g. Codeforces)

  Please don't ask me for help. I can't offer much besides generic advice, sorry.
- **Social media platforms** (e.g. Twitter)

  I don't like social media at all. I only have accounts to view content.

- **"Professional" platforms** (e.g. LinkedIn)

  Eww. No. Gross. Never do this. Stop.

## Feedback

Feel free to leave feedback on my work, constructive or otherwise.

Please note that I most likely won't respond, and occasionally I may remove comments. This is a personal decision that I hope you can respect.

I promise you that I read everything and I truly appreciate it! ❤️

## Credits

This website was made possible with [GitHub Pages](https://pages.github.com/) and [Jekyll](https://jekyllrb.com/). While both tools made things a lot easier, this was still my first experience with front-end development, and I'm satisfied with what I've made. You can view the source code for this website [here](https://github.com/SanguineChameleon/sanguinechameleon.github.io).

<script>
    try {
        let toBirthday = year => Date.UTC(year, 11, 10, 4, 40);
        let now = new Date();
        let year = now.getUTCFullYear();
        let time = now.getTime();
        if (time < toBirthday(year)) {
            year--;
        }
        let total = toBirthday(year + 1) - toBirthday(year);
        let age = (year - 2006) + (time - toBirthday(year)) / total;
        document.getElementById("age").textContent = `I'm currently ${age.toFixed(4)} years old.`;
    }
    catch (e) {
        console.log(e);
    }

    try {
        const events = [
            [[2024, 8, 5], "1st year"],
            [[2024, 12, 8], "1st year (on winter break)"],
            [[2025, 1, 13], "1st year"],
            [[2025, 5, 11], "1st year (on summer break)"],
            [[2025, 8, 4], "2nd year"],
            [[2025, 12, 7], "2nd year (on winter break)"],
            [[2026, 1, 12], "2nd year"],
            [[2026, 5, 10], "2nd year (on summer break)"],
            [[2026, 8, 3], "3rd year"],
            [[2026, 12, 6], "3rd year (on winter break)"],
            [[2027, 1, 11], "3rd year"],
            [[2027, 5, 9], "3rd year (on summer break)"],
            [[2027, 8, 2], "4th year"],
            [[2027, 12, 5], "4th year (on winter break)"],
            [[2028, 1, 10], "4th year"],
            [[2028, 5, 7], "4th year (on summer break)"],
        ];
        let toTime = date => {
            let year = date[0];
            let month = date[1] - 1;
            let day = date[2];
            return Date.UTC(year, month, day) - 28800000;
        };
        let time = Date.now();
        let cur = "";
        for (let i = 0; i < events.length; i++) {
            let [date, name] = events[i];
            if (time >= toTime(date)) {
                cur = name;
            }
            else {
                break;
            }
        }
        document.getElementById("uni-year").textContent = cur;
    }
    catch (e) {
        console.log(e);
    }
</script>
