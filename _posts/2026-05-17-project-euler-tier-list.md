---
title: Project Euler Tier List
date: 2030-01-01 01:00:00
---

> **Disclaimer**: While some of the criticism here may be valid, remember that I did all of this purely for fun. If you are a problem author and I placed your problem in a low tier, please don't be discouraged!
>
> From my own experience, problem-setting is an art form. So any problem that earns the honor of appearing on Project Euler is already S-tier in my heart.
>
> This post is merely a reflection of my personal tastes. I am a spoiled child who refuses to eat his dinner because vegetables are yucky.

[Problem #1000](https://projecteuler.net/problem=1000) of Project Euler is releasing this week! To celebrate (and lightly brag about being a [perfectionist]({% post_url 2025-10-22-project-euler-perfection %}) :P), here's a tier list of (almost) every single PE problem.

I'll be focusing on the "main campaign", so this list will not include extra DLC such as Problem #0 or any of the bonus problems, because I haven't unlocked all of them yet ;\_;

Of course, all this is subjective, so feel free to have "intellectual debates" with me over at the [Project Euler Discord](https://discord.gg/ZyeyhAMwCn) if you disagree.

Lastly, for any special occasion, I'm basically obligated to write something cheesy and sentimental, so all my rambling about Project Euler's philosophy will go in [the appendix]({% post_url 2026-05-17-perfectionist-thoughts %}).

---

## Ranking Scheme

Don't expect me to be remotely consistent about it. This was done over several weeks.

### F-tier: Forgotten

No fate is worse than being forgotten. With 1000 problems and counting, you have to stand out. If I barely remember a problem, then I'm sorry, it's automatically F-tier.

I know this is definitely biased toward more recent problems, or easier ones (especially in the first 50 or so) where I can still quickly see the solution. But I think this is a fair compromise if I want any chance of actually finishing this.

### B-tier: Baseline

Most problems will fall under this. Nothing especially noteworthy, but a neat problem nonetheless. Basically par for the course for PE. All problems should aim for this first.

### C-tier: Cumbersome

For problems that are particularly tedious or uninteresting. Where there's not exactly much insight to be had, and the main difficulty is just figuring out all the details.

### D-tier: Dreadful

If a problem is D-tier, that means I really, *really* struggled with it, and not in a good way. Maybe it was a skill issue on my end, but all that matters is that I had an exceptionally unfun time solving it.

### A-tier: Awesome

On the other end of the spectrum, we have problems that take a cool idea and just run with it. Not all A-tier problems are hard, and not all hard problems are A-tier. If I enjoyed solving it, it'll probably end up here.

### S-tier: Sensational

Reserved for the problems that have achieved legendary status or left me with truly fond memories. Most problems of this tier are real killers. You've been warned!

### Additional Remarks

Wherever appropriate, I've left extra comments on (hopefully) most of the problems. You can tap or hover over each grid cell for more info.

---
{: style="margin-top: 1.25rem;"}

<style>
    #progress_page {
        --color-almost-black: #111;
        --color-background-default: #222;
        --color-text-default: #ccc;
        --color-border-default: rgb(111, 111, 111);
        --color-border-variation-1: #666;
        --color-text-link: #9d6f53;
        --color-text-link-hover: #666;
    }

    #progress_page .grid td {
        background-color: inherit;
        border: 0.05rem solid var(--color-border-default);
    }

    #progress_page .grid {
        .mystery_cell {
            background-color: rgb(160, 160, 160);
        }
        .s_tier_cell {
            background-color: rgb(255, 127, 127);
        }
        .a_tier_cell {
            background-color: rgb(255, 191, 127);
        }
        .b_tier_cell {
            background-color: rgb(255, 255, 127);
        }
        .c_tier_cell {
            background-color: rgb(127, 255, 127);
        }
        .d_tier_cell {
            background-color: rgb(127, 255, 255);
        }
        .f_tier_cell {
            background-color: rgb(127, 127, 255);
        }
    }

    #progress_page .tooltip {
        position: relative;
    }

    #progress_page .tooltip .tooltiptext_narrow {
        line-height: 1.35;
        visibility: hidden;
        background-color: var(--color-background-default);
        color: var(--color-text-default);
        border: 0.05rem solid var(--color-border-variation-1);
        text-align: center;
        border-radius: 0.25rem;
        padding: 0.25rem 0.5rem;
        position: absolute;
        z-index: 1;
        font-weight: normal;
        font-size: 80%;
        top: 100%;
        word-wrap: break-word;

        width: 9rem;
        left: 50%;
        margin-left: -4.5rem;
    }

    #progress_page .tooltiptext_narrow {
        visibility: hidden;
    }

    #progress_page .tooltip:hover .tooltiptext_narrow,
    #progress_page .tooltip:focus-within .tooltiptext_narrow {
        visibility: visible;
    }

    #progress_page {
        font-family: "Segoe UI", Arial, sans-serif;
        font-size: 90%;
        color: var(--color-text-default);
    }

    #progress_page .problems_solved_grid table {
        border-collapse: separate;
        border-spacing: 0;
        background-color: var(--color-background-default);
        border: 0.15rem solid var(--color-border-default);
        border-radius: 0.15rem;
    }

    #progress_page .problems_solved_grid {
        width: fit-content;
        margin: 2.2rem auto;
    }

    #progress_page .problems_solved_table td {
        width: 2rem;
        height: 2rem;
        padding: 0;
        text-align: center;
    }

    #progress_page .problems_solved_table td .cell_content {
        display: flex;
        width: 100%;
        height: 100%;
        align-items: center;
        justify-content: center;

        font-size: 75%;
        line-height: 1;
        color: var(--color-text-default);
    }

    #progress_page .problems_solved_table td .cell_content a {
        font-weight: 600;
        color: var(--color-text-link);
    }

    #progress_page .problems_solved_table td .cell_content a:hover {
        text-decoration: none;
        color: var(--color-text-link-hover);
    }

    #progress_page .problems_solved_table .tooltiptext_narrow {
        font-size: 100%;
    }

    #progress_page .problems_solved_grid .cell_content {
        color: inherit;
        display: block;
        width: 100%;
        text-decoration: none;
        font-weight: normal;
    }

    #progress_page .problems_solved_grid .problem_solved .cell_content {
        color: var(--color-almost-black);
    }

    #progress_page .strong {
        font-weight: bold;
    }

    #progress_page .larger {
        font-size: 110%;
    }
    #progress_page .smaller {
        font-size: 90%;
    }
</style>

{% assign valid = true %}
{% for grid_num in (0..9) %}
{% for row_num in (0..9) %}
{% for col_num in (0..9) %}
{% assign problem_num = grid_num | times: 10 | plus: row_num | times: 10 | plus: col_num | plus: 1 | append: "" %}
{% assign problem_info = site.data.project_euler_tier_list[problem_num] %}
{% if problem_info != nil %}
{% if problem_info.tier != "S" and problem_info.tier != "A" and problem_info.tier != "B" and problem_info.tier != "C" and problem_info.tier != "D" and problem_info.tier != "F" %}
{% assign valid = false %}
{% endif %}
{% if problem_info.comment == nil %}
{% assign valid = false %}
{% endif %}
{% endif %}
{% endfor %}
{% endfor %}
{% endfor %}

{% if valid %}
<div id="progress_page">
    {%- for grid_num in (0..9) %}
    <div class="problems_solved_grid">
        <table class="grid problems_solved_table" id="grid_{{ grid_num }}">
            <tbody>
                {%- for row_num in (0..9) %}
                <tr>
                    {%- for col_num in (0..9) %}
                    {%- assign problem_num = grid_num | times: 10 | plus: row_num | times: 10 | plus: col_num | plus: 1 | append: "" %}
                    {%- assign problem_info = site.data.project_euler_tier_list[problem_num] %}
                    {%- if problem_info.tier != nil %}
                    {%- assign class_name = problem_info.tier | downcase | append: "_tier_cell" %}
                    {%- else %}
                    {%- assign class_name = "mystery_cell" %}
                    {%- endif %}
                    <td class="tooltip {{ class_name }} problem_solved">
                        {%- if problem_info != nil %}
                        <div class="cell_content">
                            {{ problem_num }}
                            <div class="tooltiptext_narrow">
                                <div class="strong larger">Problem {{ problem_num }}</div>
                                <div>{{ problem_info.tier }}-tier</div>
                                {%- if problem_info.comment != "" %}
                                <div class="smaller">{{ problem_info.comment }}</div>
                                <a href="https://projecteuler.net/problem={{ problem_num }}">View Problem</a>
                                {%- endif %}
                            </div>
                        </div>
                        {%- endif %}
                    </td>
                    {%- endfor %}
                </tr>
                {%- endfor %}
            </tbody>
        </table>
    </div>
    {%- endfor %}
</div>
{% else %}
i've made a boo-boo :(
{% endif %}