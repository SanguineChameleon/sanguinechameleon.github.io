---
layout: post
title: "On Problem-Solving"
---

> **Update** (<span class="mono">06-Dec-2025</span>): As enthusiastic as I was about this post back when I wrote it, it's now unfortunately pretty outdated. While I still agree with most of the points here, there are two main issues:
> 1. I think the comparison between Project Euler and Codeforces is unfair. Or at least, I very clearly implied that Project Euler is "good" and Codeforces is "bad". This is no longer true; I enjoy both now.
> 2. "Giving my utmost respect" to school is now an unrealistic pipe dream. I used to imagine university as this wonderful, magical place where I could learn the secrets of the universe, and the professors were gods among men or something like that. The novelty has since worn off. Not sure if this is senioritis or just me being disappointed with reality.
>
> In any case, I hope you still get something out of this post.

> **Note**: This post is intended for a general audience, so some concepts have been deliberately simplified.

If someone were to ask me what I like to do in my free time, I would want to say that it's solving problems. But conversations are short, and time is limited, which means I wouldn't do a good job of explaining what problem-solving is. So this write-up is an attempt to clarify what I mean by it.

My background is in the competitive programming (or informatics olympiad) scene, but the points I make should apply to any field. It's just that comp-prog is pretty much the only thing that I am ([verifiably](https://stats.ioinformatics.org/results/2023)) okay-ish at. I do believe that if things had turned out differently, I could've gotten an IMO gold medal or something like that (more on that later). But I like comp-prog, so that's what I'll write about.

## Mathematics and the IMO

Now, I don't have much experience with math olympiads, but they do share a similarity with informatics olympiads that I want to mention.

In mathematics, the general question people ask is:

> _How do we solve this problem **correctly**?_

What do I mean by \"correctly\"? Well, ignoring short-answer questions that are common in contests for younger students, most contest math is about writing proofs.

Consider the classic Pythagorean theorem, which states that given a right triangle with side lengths $a$, $b$, and hypotenuse $c$, the equation $a^2 + b^2 = c^2$ always holds. How would you prove such a result?

One way you could do it is by trying a lot of triangles and checking that they work. For example, the $3-4-5$ triangle satisfies $3^2 + 4^2 = 5^2$, along with the $5-12-13$ triangle, etc. But there are infinitely many triangles! You can't just check some of them and be sure that the theorem is correct.

In science, the process consists of observing a phenomenon, coming up with a hypothesis, and testing it by running experiments. However, in mathematics, you can just **prove** that it's correct. Like, just draw a few lines, rearrange some shapes, and you've shown that the Pythagorean theorem is true for **any** triangle. It's a really powerful tool.

That's generally the tricky part of math questions. It's not just about finding the answer, but also proving that your answer is completely correct.

## Computer Science and the IOI

What about computer science? Well, I think the question is slightly different:

> _How do we solve this problem **quickly**?_

Of course, it should still be solved correctly, but there's more emphasis on speed here.

Let's say you want to find the shortest path from your house to school. This is a classic graph theory problem. Each road has a certain length and connects two locations. With all these locations (nodes) and roads (edges), the task is to find the shortest path from home to school.

One obvious way you can solve this is... try all the paths! There are only finitely many of them (assuming you don't go in circles), so in theory, you can check all of them. The proof of correctness is also straightforward: if you've checked all the paths, you'll have found the shortest one.

The main issue with this approach is that it's painfully slow. It's correct, yes, but if there are billions of paths, then you have a problem. The GPS apps on your phone don't just try all the paths to find the quickest route. They do something much more clever and efficient, but importantly, something that is still correct.

Unlike mathematics, where coming up with the solution/proof is already difficult, in computer science it's often easy to find a brute-force solution. The hard part is finding an efficient solution.

### On Time Complexity

It'd be remiss of me not to mention time complexity, so I'll try to explain it simply.

Imagine you have some code that services customers, and it can handle $100$ customers in $1$ second. You want to find out how long would it take to service $1000$ customers:

- If it still takes $1$ second, then the speed of your code doesn't depend on the number of customers. This is a **constant** time complexity, written as $O(1)$.
- If it takes $10$ seconds, then your program takes $10$ times as long for $10$ times as many customers. This is a **linear** time complexity, written as $O(n)$.
- If it takes $100$ seconds, then your program takes $100$ times as long for $10$ times as many customers. This is a **quadratic** time complexity, written as $O(n^2)$.

You could just run an experiment and measure the runtime, but the great thing about computer science is that you can analyze your code and make a prediction:

- If your code only does a few simple calculations, it's $O(1)$.
- If your code loops through each customer, it's $O(n)$.
- If your code loops through each pair of customers, it's $O(n^2)$.

I'm oversimplifying a lot here, but this is the general idea, and in practice, you want algorithms with a lower time complexity.

In the previous example, finding the shortest path between two locations can be done in $O(n \log n)$, which is \"basically\" linear.

### So what is the IOI?

You'd expect it to be something like the IMO, a pen-and-paper exam where you are asked to design an algorithm with the lowest possible time complexity. That's what many university exams do, and the IOI could've been like this. But it isn't!

At the IOI, you write code for your algorithm and submit it. Then, your code gets evaluated on a set of inputs and outputs. If your code works on all the given inputs (or test cases), then you've solved the problem.

Returning to the Pythagoras example, this is like testing the theorem on a bunch of specific triangles. In that sense, you're not completely guaranteed that your code works on **any** input. You just know that it works on the set of test cases that they've provided.

It's a bit like medical testing. If someone doesn't have a disease, then they (hopefully) won't be flagged as having it. But if they do have it, the test might still miss it. Likewise, if your code fails on some input, it's certainly wrong. But if it passes all the inputs, then it's still possible that it's wrong on some other test case. The only way to be completely sure would be to check **all** the inputs, which isn't feasible!

So why is the IOI like this? Well, I can think of two reasons:

1.  Computer science has theoretical aspects, but it certainly also has practical aspects. It's reasonable to expect contestants to write the code for their algorithms.
2.  IOI submissions can be up to 200-300 lines of code. A pen-and-paper exam would be a nightmare to grade. (Could a computer verify correctness instead? Nope! There's no general way to automatically check if some code is correct. This is related to something called the halting problem.)

Most comp-prog contests are like this. Given a limited amount of time, try to solve as many problems as possible. The most popular site for online contests is Codeforces, but there are many others as well. It's all good fun, but sometimes I see newcomers try to learn programming through sites like these.

This brings me to my next point...

### Competitive programming is NOT programming

Don't get me wrong, you obviously have to write code to solve comp-prog problems. But that isn't the main point of competitive programming. Comp-prog is about **finding** an efficient solution to a problem. The implementation is secondary.

Think of it like this: your friend poses a puzzle to you. Once you've figured out the solution, you need to clearly explain it to them, and you'd do this using the language of English. In comp-prog, you communicate your solution using your favorite programming language. In math, you might use phrases like \"therefore\", \"it follows that\", or \"suppose that\" to form an argument.

That being said, there are, of course, a few exceptions:

- The problem statement could provide some complicated rules (like a game), and your task is to implement them. These are rare and often feel like busy work for contestants. I personally like them because I like working through intricate details, but others will probably find it tedious. It's also the type of problem that is least related to comp-prog in my opinion.
- Sometimes the solution is conceptually simple, but the implementation itself isn't. For example, it might use some classically convoluted algorithm that's over 400 lines of code. I also like these problems, but I would say they're more about applying \"techniques\", which I will elaborate on later.

### IOI vs. CF

Despite both being comp-prog contests, the IOI and Codeforces have a fundamental difference. IOI problems are usually referred to as OI-style problems, while Codeforces problems are usually called ICPC-style.

Remember that you, the contestant, can analyze the time complexity of your code. The judge, a computer, cannot do that. So how does it check if your solution is efficient enough? Well, it simply measures the runtime. There's a fixed time limit (e.g. 2 seconds) and if your code finishes within that time, then it passes. Because runtime depends on the input size, all problems will specify the maximum input size directly.

For ICPC-style problems, you either solve it, or you don't. To earn the points, your algorithm needs to pass all the test cases. On the other hand, OI-style problems allow partial marks. The problem-setters can provide smaller test cases that accept slower solutions. The more efficient your algorithm is, the more test cases you pass, which means more points.

### On \"cheese\"-ing

This isn't really relevant to the topic, but I figured it's worth mentioning.

Unlike math contests, where the problem is clearly specified and you just have to find the solution, comp-prog problems usually only give you the constraints of the input size, which I will call $n$. It is up to you to determine the time complexity for your algorithm.

There are many rules of thumb that you can use:

- If $n \approx 2 \cdot 10^5$, then $O(n)$ and $O(n \log n)$ algorithms should pass.
- If $n \approx 10^5$, then $O(n \log^2 n)$ should pass.
- If $n \approx 5000$, then $O(n^2)$ should pass.
- If $n \approx 300$, then $O(n^3)$ should pass.
- If $n \approx 20$, then $O(2^n)$ should pass.
- etc.

Of course, these are just rough guidelines. Sometimes slower time complexities pass for large $n$, and sometimes efficient time complexities don't. It depends on how optimized your implementation is.

This is where time complexity analysis gets fuzzy. You're just comparing the algorithm against itself. So for an $O(n)$ algorithm, if $n$ increases by $10$ times, then the runtime will also increase by $10$ times. But this doesn't tell you how long it takes to run for a specific value of $n$. It might take $1$, $10$, or $100$ seconds, depending on how you wrote the code.

Now, this usually isn't a big deal, but it can get discouraging when your algorithm just barely exceeds the time limit. There are three possible cases:

1.  **The time complexity isn't fast enough.** Too bad, you'll need a better algorithm.
2.  **The time complexity is fast enough, but your implementation isn't.** In that case, try to optimize your code. Maybe you can remove some redundant operations.
3.  **The time complexity isn't fast enough, but you try to optimize it anyway.**

Case 3 is what's often known as \"cheese\"-ing. It's when you try to squeeze a suboptimal solution to pass, even when you know it's not efficient or intended.

My thoughts on cheese-ing? Well, depends on why you're doing it. If you're in a contest and you're desperate for some points, then go for it. But I'd only do it as a last resort.

If you're just solving problems to learn, then... why cheese it? What do you gain from it? Perhaps you can argue that it teaches you about low-level tricks like memory layout and cache optimization. That stuff is certainly interesting and worth learning, but I don't think it's really in the spirit of comp-prog.

Another form of cheese-ing relies on the test cases being \"weak\". As I've mentioned earlier, the test cases are designed to give a reasonably confident (but not perfect) verdict on whether your solution is correct. But sometimes test cases are weak in the sense that they allow suboptimal (or even incorrect!) solutions to pass.

Now, I am sure that most problem-setters put their time and effort into ensuring that the tests are strong, so I won't point to an example where the issue was just author sloppiness. Instead, I have a more abstract and recent example from a regional contest.

APIO (Asia-Pacific Informatics Olympiad) 2024 was notorious for a few things, especially [Problem 3](https://oj.uz/problem/view/APIO24_show), which allowed some silly solutions to pass.

Here's an oversimplification of the problem: Alice and Bob are playing a game against Catherine, and they need to come up with a **perfect** strategy. By \"perfect\", I mean no matter what Catherine does, Alice and Bob should **always** win.

Coming up with a perfect strategy is quite challenging, and I think the core idea of the problem is pretty nice. But think about what the judge needs to do: it plays the role of Catherine and must find the right counter-move against Alice and Bob. So if their strategy was even slightly imperfect, Catherine could exploit it and they'd surely lose.

Here's the big issue: it's basically impossible for Catherine (or the judge) to find such a counter-move efficiently! So instead, Catherine just plays a random move. This means that an imperfect strategy can still pass the test cases. Naturally, this made a lot of contestants upset. Some didn't even bother trying silly strategies because they assumed that those wouldn't work anyway, which ended up costing them a lot of points.

There's a pretty amusing [quote](https://codeforces.com/blog/entry/129429?#comment-1151002) about this on Codeforces:

> _Instead of beating the problem, I only need to beat the author._

Which... sure? If all you care about is \"solving\" the problem, then I guess that's fine. I've been guilty of this during contests too. But I don't really like this mindset.

Either way, I think this would've been better as an IMO problem.

## On Insights and Techniques

Whew! After all that, what is problem-solving, anyway?

I believe there are two main components: **insights** and **techniques**.

### Techniques

I define a technique to be something that you can **learn** and **apply** as a problem-solving tool. Revisiting the earlier examples, to find the shortest path between two locations, you can use Dijkstra's algorithm, which runs in $O(n \log n)$ time. Or to find the length of the hypotenuse given the two side lengths of a right triangle, you can use the Pythagorean theorem.

In my view, all algorithms in computer science and all theorems in mathematics are techniques, because they are something that can be learned and added to your toolbox. There are, of course, much more sophisticated examples beyond Dijkstra and Pythagoras, but the idea is the same.

### Insights

On the other hand, insights are things that are not obvious. They often require a stroke of **creativity** or **brilliance**. Here's a wonderful example to illustrate my point, called the [mutilated chessboard problem](https://en.wikipedia.org/wiki/Mutilated_chessboard_problem):

> Suppose you have an $8 \times 8$ chessboard with two diagonally opposite corners removed, so you're left with $8 \times 8 - 2 = 62$ squares. Is it possible to place $31$ dominoes on this chessboard (each occupying two adjacent squares) so that no two dominoes overlap?

{% include image.html name="chessboard.png" width="17rem" %}

The solution is as follows:

> Each domino must occupy exactly one black square and one red square. Notice that removing the two red squares in the corners leaves $30$ red squares and $32$ black squares remaining. Since the number of black squares and red squares are not equal, it is impossible.

Such an elegant solution!

### Insights are just Techniques

Here's the thing: if you've never seen the solution to the chessboard problem before, what I've described might feel like magic. But once you know the solution, you've suddenly unlocked a new tool: a coloring argument, or more specifically an argument about parity (odd and even counts).

With this new tool, you can now solve a bunch of other problems, including [problem D](https://codeforces.com/contest/2096/problem/D) from my recent Codeforces contest! (wasn't even my problem, but I'll promote it anyway)

Thinking about it this way, once you have an insight, it becomes a technique for future problems. In fact, every theorem and algorithm was an insight made by someone at some point. Dijkstra and Pythagoras (okay, it wasn't him but you get my point) had to discover the right insight to arrive at what we now consider as standard.

So it's essentially a cycle: you start with some basic techniques, use them to find new insights, those insights become new techniques, and the process repeats.

For a more concrete example, during my IOI training, the very first practice set I did was from IOI 1994. I remember spending maybe 1 or 2 hours to solve what was meant to be 6 problems over 10 hours. Does that mean that humans weren't as good as informatics back then? Not really. I think it's just that the techniques that were once novel in 1994 are so common now that they are hardly interesting. Of course, the fact that someone invented these techniques in the first place is still brilliant. More recently, the technique from [Problem 6](https://oj.uz/problem/view/IOI16_aliens) of IOI 2016 (\"Aliens\") is now so widely known that it even has a nickname: _the trick from Aliens_.

## On Project Euler

With the philosophical musing out of the way, I want to talk about my latest obsession.

Project Euler is a series of mathematics problems that typically require some form of programming to solve them. Just from that description, you can see why I love it.

At the time of writing this, I have solved $472$ of the available $944$ problems, exactly $50\%$. I've been solving them sequentially starting from problem $1$. I've never skipped a problem.

I was first introduced to Project Euler when I was maybe 12 or 13, as a way to practice programming. As I've said earlier with comp-prog, Project Euler isn't actually a great way to learn programming, since, it's more focused on mathematical insights. Besides, I was too young to appreciate the math behind the problems, and I often ended up searching for the answers online. (I only made it to around problem $100$, and since sharing the solutions for the first $100$ problems is allowed, I didn't break any rules, I promise!) Eventually, I got bored and stopped.

Fast forward a few years to high school. During one of my comp-prog lessons, someone gave us Project Euler problems to try. I got hooked again, and I told myself that after IOI, I'd finally return to Project Euler. Almost 2 years later, I'm still having a ton of fun.

### PE $>$ CF?

I'm not sure exactly when it happened, but at some point, I realized that I prefer solving Project Euler problems to Codeforces problems. It's a subtle reason, but I'll try to explain.

Suppose you are solving a problem. You have some techniques in your toolbox and you'll likely need to come up with some insights to solve it. If the problem only requires techniques and no insights, it means the problem is already easily within your reach, so I won't focus on that here.

Okay, but how do you come up with those insights? There's no secret recipe. You just think about it for a long while in the hopes that something happens. Take the mutilated chessboard problem earlier. If you have no idea what parity is, it's going to be really hard to come up with the solution yourself.

With Codeforces problems, eventually, I reach a point where I accept that I can't solve it and read the solution (or editorial). There are three scenarios:

1.  **I had all the techniques, and the insight is something I could've come up with.** This is a valuable learning experience. It means that I could've linked the techniques in a better way to discover the insight.
2.  **I did not know some technique or algorithm, and there's no way I could've come up with the technique myself.** That's fair. It means I've just learned something new.
3.  **The insight feels like magic.** Okay? I guess it's a new tool now.

Cases 2 and 3 happen more often than I'd like. I believe that given an infinite amount of time, I would be able to solve and prove every known math or computer science result, and anyone else could too. But unfortunately, none of us have infinite time. So when I hit one of those cases, I usually just go, _\"Huh. Okay\"_ and move on. If the insight in case 3 is especially elegant, I'd be more excited. But most likely it's just something that I didn't think of.

To [quote](https://www.youtube.com/live/uajgh54TRu8?t=17235s) Gennady Korotkevich, one of the greatest competitive programmers of all time:

> _There's some kind of differentiation in two types. So one type is where you need some insight and it means that... you cannot get the solution logically, in a way... you need to have a moment of, you know, being a genius._

Hopefully, you can see why this type of problem isn't as fun for me. They're still great problems of course, and I respect the authors for coming up with them, but they don't leave me with the same sense of satisfaction once I've given up and read the solution.

Compare this with Project Euler. I've never had to read any solution online, mostly because it's literally prohibited to share them. But whenever I encounter a challenging problem and spend a long time thinking about it, I get a real sense of achievement and joy when I finally solve it.

Here's the thing: you can just Google things you don't know! In fact, [Project Euler](https://projecteuler.net/) explicitly encourages this:

> _Making use of the internet to research a problem is to be encouraged as there could be hidden treasures of mathematics to be discovered beneath the surface of many of these problems. If the ideas are new to you, then use the internet or books to get some background; the problem should contain clues as to what to look-up._

By designing the problems this way, case 3 pretty much never happens. If there is some insight I don't see, I most likely lack the mathematical background for it. But that's something I can fix through research.

Of course, you can still Google things for Codeforces problems, but they're usually not designed to be Googleable in the first place.

Now, you might think that this is a bit lazy: after all, I'm just Googling the theorems that I need, and not figuring them out myself. But I think there's more to it.

> _The problems range in difficulty and for many the experience is inductive chain learning. That is, by solving one problem it will expose you to a new concept that allows you to undertake a previously inaccessible problem. So the determined participant will slowly but surely work his/her way through every problem._

There have been many times when I encountered a new concept, did some reading, and found the results I needed. Then, when I see a future problem that uses a similar idea, I immediately go, _\"Ah! I've seen this before!\"_ and it's a wonderful feeling.

Crucially, it's not over once you've found the right information. It's not simply \"find this theorem, apply it, and get the answer\". There is still more thinking to be done.

Take Dijkstra's algorithm, which finds the shortest path between two locations. How would you modify it to find the second shortest path? The third? The $k$-th shortest path? If you don't fully understand how and why the algorithm works, you'll still have a hard time solving it.

In that way, it's less about what tools you have in your toolbox, but rather how you apply those tools meaningfully to gain insights.

Lastly, another way Project Euler stands out is that it doesn't require you to submit code. It only asks for a single numerical answer for each problem. This seems counter-intuitive at first, but I think it's a brilliant decision by the developers.

> _Each problem has been designed according to a \"one-minute rule\", which means that although it may take several hours to design a successful algorithm with more difficult problems, an efficient implementation will allow a solution to be obtained on a modestly powered computer in less than one minute._
>
> _Does it matter if it takes more than one minute to solve? Of course not, but that should provide the impetus to return to the problem and see how you can improve your approach. But remember that once you've solved a particular problem you will be able to access a thread relating to that problem and it is here that you may be able to pick some tips from others that have solved it._

That's what I like most about Project Euler: I get to choose the level of insight I want to gain. It's perfectly valid to stop at a 10-minute solution if the sub-1-minute solution is out of reach with my current toolbox.

Contrast this with Codeforces: each problem has a fixed time limit, and to solve it as efficiently as possible, you need to start with some (possibly magical) insights. But Project Euler does it the other way around: the \"magical insights\" come after the problem is solved when you can reflect on others' solutions. That makes for a much more satisfying problem-solving experience.

(Side note: I will confess that I've let some programs run for well over 20 hours. I do not apologize for this.)

## On Training and Learning

To finish, I want to talk about competitive programming again. I won an IOI gold medal in 2023, which was almost 2 years ago. With AI becoming more prevalent and slowly getting better than humans at comp-prog, my achievement is, in a way, becoming obsolete. Do I feel sad or worried about this? Not really. I'll save the discussion on AI for another time though.

Anyway, when I was training for the IOI, I had a simple goal in mind: **get a gold medal**. This wasn't for any ulterior motives like school or career prospects. I just wanted a gold medal. Of course, I'm incredibly grateful for the opportunities it's given me, but it still started as a personal goal, and nothing more.

In my view, training essentially involves 2 things:

1.  Adding as many tools as you can to your toolbox.
2.  Using those tools as effectively as possible.

You can't train well without both. You can't just do (1), or you'll end up mindlessly shoving obscure algorithms and techniques into your head. You can't just do (2) either, because then you might be at a disadvantage to other participants who simply know more than you do.

I'm in college now, and I'm well past the phase of doing comp-prog 10 hours a day (although, it is summer...) I don't think I'd enjoy it the same way anymore. Not because comp-prog isn't fun (it certainly is), but because working towards such an intense goal is mentally draining.

I remember being very self-conscious that all my classmates on Codeforces were Grandmasters ($2400$ rating), while I was stuck at Master ($2100$). In hindsight, this was an actively harmful mindset. I hadn't realized that the toolbox required for CF was different from the one for IOI. Yes, they're both comp-prog, but from my personal experience, each focuses on its own set of tools.

After IOI, I had a new goal: reach Grandmaster on CF. I refined my toolbox, performed well in a few contests, and eventually got as far as International Grandmaster (max rating: $2747$). I considered going for Legendary Grandmaster ($3000$), but I ultimately decided that it wasn't worth the effort.

I say this because recently I've been participating in Codeforces contests in a slightly unusual way. I try to solve a hard problem like E first. Not because I am confident that I can solve problems A to D, but because I want to give myself a challenge.

Obviously, it hasn't gone well, because it's hard! My rating has plummeted to a fantastic $2347$. But at this point, rating doesn't really matter to me anymore.

I want to highlight what happened in the most recent round I did: I had the idea for E, submitted it, got Time Limit Exceeded multiple times, and failed to solve it during the contest. I came up with the fix about 15 minutes after the contest. Whoops!

The issue wasn't that I didn't have the insight. I had the general idea, but due to fumbling with the implementation, I had an $O(n \log^3 n)$ solution instead of $O(n \log^2 n)$. Since implementation is more about technique, I would say that I failed due to (1): my toolbox wasn't sharp enough.

What do I gain from doing this during the contest instead of afterward, where there's no heavy penalty? Well, nothing really. I just find it fun, and no one can stop me from that.

Is it a bad thing that I'm forgetting my tools? I don't think so. It's just the inevitable consequence of me not focusing on comp-prog as much as I used to.

Should I be doing more comp-prog then? Maybe, I guess. But only if I have an active comp-prog goal in mind to work towards. There is, of course, ICPC in college... but I will leave that to the pros who are actively try-harding.

Shifting focus onto university learning, it's not uncommon for me to look at old course material and... not understand what's going on. Not because the course was bad or uninteresting, but simply because I haven't actively engaged with the material in a while.

The same can be said during revision week, before exams. In theory, if my toolbox was perfect, I could just go into the exam hall and ace the exam without revising. But it isn't, so there's a bit of (1) that I can still do: more tools that I can refine before the exam.

Here's my point: **every field has its own toolbox**. Some tools overlap, but chances are that whenever you enter a new field, you'll have to do (1) again and rebuild your toolbox. However, I believe you don't have to relearn (2) again! The ability to use tools well -- the instinct to experiment and combine techniques -- **still transfers** even if you have a completely different set of tools.

In that way, I think (2) is the much more valuable skill to have. It doesn't matter what field you engage (2) in. As long as you actively maintain this skill, you can pretty much learn anything.

When it comes to actual school responsibilities, I give them my utmost respect. Even if it's something that I'm already familiar with, like an algorithms course or a competitive programming course, I'd still give my best and refine my different toolboxes throughout the semester.

Beyond that though, I just do the things I like. I do Project Euler because I like it more than other things. There's nothing deeper than that. I did IOI because I wanted to. I could've been an IMO medalist, or an IChO medalist, or an IOL medalist, or even pursued something outside of academia. But this is what makes me happy.

I simply enjoy solving problems. That's all there is to it :)
