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
{: style="margin-bottom: 1.6rem;"}

<div class="art-container">
    <div class="art-header">
        <nav>
            <ul>
                <li><button type="button" onclick="goToFirst()"><<</button></li
                ><li><button type="button" onclick="goToPrev()"><</button></li
                ><li><button type="button" onclick="goToRandom()">?</button></li
                ><li><button type="button" onclick="goToNext()">></button></li
                ><li><button type="button" onclick="goToLast()">>></button></li>
            </ul>
        </nav>
        <span class="counter"></span>
    </div>
    <span class="caption loaded"></span>
    <div class="img-frame">
        <img class="loaded" />
    </div>
    <span class="mirror loaded"><a href=""></a></span>
</div>

<script>
    let data = [
        {% for item in site.data.art %}
        {
            name: "{{ item.name }}",
            caption: {{ item.caption | jsonify }},
            mirror: "{{ item.mirror }}",
        },
        {% endfor %}
    ]

    let img = document.querySelector(".art-container img");
    let caption = document.querySelector(".art-container .caption"); 
    let mirrorLink = document.querySelector(".art-container .mirror a");
    let mirrorSpan = document.querySelector(".art-container .mirror");
    let counter = document.querySelector(".art-container .counter");

    let strLen = String(data.length).length;

    let firstId = 0;
    let lastId = data.length - 1;

    let id;
    let timeout;
    let isInit = true;

    img.onload = () => {
        if (isInit) {
            isInit = false;
            return;
        }

        img.classList.remove("loaded");
        caption.classList.remove("loaded");
        mirrorSpan.classList.remove("loaded");

        void img.offsetWidth;

        caption.textContent = data[id].caption;
        mirrorLink.href = data[id].mirror;

        img.classList.add("loaded");
        caption.classList.add("loaded");
        mirrorSpan.classList.add("loaded");
    };

    function setId(value) {
        document.querySelector(".art-container").scrollIntoView({ 
            behavior: "smooth", 
            block: "nearest",
        });

        window.history.replaceState(null, null, `#${value + 1}`);

        if (id == value) {
            return;
        }
        id = value;

        counter.textContent = `${String(id + 1).padStart(strLen, "0")}/${data.length}`;

        img.classList.remove("loaded");
        caption.classList.remove("loaded");
        mirrorSpan.classList.remove("loaded");

        clearTimeout(timeout);
        timeout = setTimeout(() => {
            img.src = `/assets/images/{{page.slug}}/${data[id].name}.png`;
        }, 120);
    }

    function goToFirst() {
        setId(firstId);
    }

    function goToLast() {
        setId(lastId);
    }

    function goToPrev() {
        setId(Math.max(firstId, id - 1));
    }

    function goToNext() {
        setId(Math.min(lastId, id + 1));
    }

    function goToRandom() {
        let newId = Math.floor(Math.random() * (data.length - 1));
        if (newId >= id) {
            newId++;
        }
        setId(newId);
    }

    function init() {
        let hashId = parseInt(window.location.hash.substring(1));
        if (!isNaN(hashId) && (1 <= hashId && hashId <= data.length)) {
            id = hashId - 1;
            window.addEventListener("load", () => {
                document.querySelector(".art-container").scrollIntoView({ 
                    behavior: "smooth", 
                    block: "nearest",
                });
            });
        }
        else {
            window.history.replaceState(null, null, window.location.pathname);
            id = lastId;
        }

        counter.textContent = `${String(id + 1).padStart(strLen, "0")}/${data.length}`;
        img.src = `/assets/images/{{page.slug}}/${data[id].name}.png`;
        caption.textContent = data[id].caption;
        mirrorLink.href = data[id].mirror;
        mirrorLink.textContent = "IG Mirror";
    }

    init();

    window.addEventListener("hashchange", () => {
        let hashId = parseInt(window.location.hash.substring(1));
        if (!isNaN(hashId) && (1 <= hashId && hashId <= data.length)) {
            setId(hashId - 1);
        }
        else {
            window.history.replaceState(null, null, window.location.pathname);
        }
    });

    document.addEventListener("keydown", (e) => {
        if (e.key === "ArrowLeft") {
            goToPrev();
        }
        if (e.key == "ArrowRight") {
            goToNext();
        }
    });
</script>

---
{: style="margin-bottom: 1.5rem;"}

<div class="highlight"><pre class="highlight"><code style="font-size: 1.05rem">
{%- for item in site.data.art -%}
<button type="button" onclick="setId({{ forloop.index0 }})">{{ forloop.index }}. {{ item.caption }}</button>
{% unless forloop.last %}
{% endunless %}
{%- endfor -%}
</code></pre></div>