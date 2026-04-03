---
layout: post
title: "My Art"
---

> **Note**: I mainly post on [Instagram](https://www.instagram.com/sanguinechameleon/), so this page is just here for archival purposes.

Here are all the works I've shared so far, in (roughly) chronological order.

I mostly draw on paper, with the occasional doodle on a phone, laptop, whiteboard, etc.

If I ever get really good at it (who knows?), maybe one day this page will earn its place as a proper header navigation link. But for now, it remains a humble hyperlink in my About section, and I'm happy with that.

Most of my work features my original character, Leo. He's a wolf-chameleon hybrid thing. I haven't fleshed him out entirely, and to be honest, I don't really feel like it yet.

Sometimes I post darker stuff. I usually try to follow up with something much more lighthearted, but I understand that it might still come across as concerning.

So just to be clear, any emotions in my work are exaggerated tenfold from anything I may (or may not) be experiencing. I wouldn't be posting if I genuinely weren't okay.

I like being a soft boi. But I also like being an edgy boi.

In that sense, Leo's a representation of myself, but he's also my lovely punching bag >:3

---
{: style="margin-bottom: 1.5rem;"}

<div class="art-container">
    <ul>
        <li><button type="button" onclick="goToFirst()"><<</button></li
        ><li><button type="button" onclick="goToPrev()"><</button></li
        ><li><button type="button" onclick="goToRandom()">?</button></li
        ><li><button type="button" onclick="goToNext()">></button></li
        ><li><button type="button" onclick="goToLast()">>></button></li>
    </ul>
    <span class="caption">you can do it!</span>
    <img style="width: 32rem" />
    <span class="ig-mirror"><a href="">IG Mirror</a></span>
</div>

<script>
    let data = [
        {% for item in site.data.art %}
        {
            name: "{{ item.name }}",
        },
        {% endfor %}
    ]

    let img = document.querySelector(".art-container img");
    let caption = document.querySelector(".art-container .caption"); 

    let id;
    function setId(value) {
        id = value;
        img.src = `/assets/images/{{page.slug}}/${data[id].name}.png`;
        caption.textContent = data[id].name;
    }

    let firstId = 0;
    let lastId = data.length - 1;
    setId(lastId);

    function goToFirst() {
        setId(firstId);
    }

    function goToLast() {
        setId(lastId);
    }

    function goToPrev() {
        if (id == firstId) {
            return;
        }
        setId(id - 1);
    }

    function goToNext() {
        if (id == lastId) {
            return;
        }
        setId(id + 1);
    }

    function goToRandom() {
        let newId = Math.floor(Math.random() * (data.length - 1));
        if (newId >= id) {
            newId++;
        }
        setId(newId);
    }

</script>