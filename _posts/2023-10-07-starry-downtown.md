---
layout: post
title: "Starry Downtown"
author: sadh
categories: [From Story]
tags:
  - starry-night
  - urban-explore
  - coffee-shop
  - bookstore-visit
  - night-music
  - futuristic-imagery
  - casual-encounters
  - midjourney
  - dall-e-3
image: https://cdn.midjourney.com/165bcbb6-0c56-46c4-b4fe-07a3d56f55c2/0_3.png
---

A starry downtown walk unveils a lively, artistically sci-fi scene.
{:class="display-6"}

I like downtown scene. I wanted to see how image generation models imagines it.
So, I pitched the following text:

> I'm walking on the road on a starry night. Suddenly I see a shop that offers
> tea, coffee and light snacks. A bookstore next to it. I ponder what to do next.
> Coffee smells good, and I like books. There are a few people here and there. A
> girl is playing a musical instrument on the side. Few groups of 3 - 5 people
> chatting in the background. Someone is playing with skateboards. A biker
> wearing a red scarf suddenly passes by. Few people have headphones on, few
> people are reading books. Nice weather.

## Midjourney

Cover image is from [this job](https://www.midjourney.com/app/jobs/f86e4d0b-ba5a-464e-8948-3198d64012ad/)
on Midjourney.

{% include view-prompt.html
prompt="/imagine
I’m walking on the road on a starry night. Suddenly I see a shop that offers
tea, coffee and light snacks. A bookstore next to it. I ponder what to do next.
Coffee smells good, and I like books. There are a few people here and there. A
girl is playing a musical instrument on the side. Few groups of 3 - 5 people
chatting in the background. Someone is playing with skateboards. A biker wearing
a red scarf suddenly passes by. Few people have headphones on, few people are
reading books. Nice weather.
Sci - fi, futuristic, photorealistic, clay painting."
%}

<div class="row row-cols-1 row-cols-md-3">
{% include an-img.html id="ffe5b8beb65f" model="Modjourney 5.2"
src="https://cdn.midjourney.com/abc4cf5d-9e96-44ce-a679-ffe5b8beb65f/0_2.png"
href="https://www.midjourney.com/app/jobs/ec4348a7-93eb-4dfb-9976-c198672ba8e4/"
snip="Sci - fi, futuristic, photorealistic, clay painting."
notes="Captured ambience well; but missed skaters, bikes and some other details.
Where did the snow come from? (I like it though.)"
%}
{% include an-img.html id="d0fcca0ae014" model="Modjourney 5.2"
src="https://cdn.midjourney.com/1c7c2c5c-1ab1-48b6-a5e3-d0fcca0ae014/0_1.png"
href="https://www.midjourney.com/app/jobs/b4e16f0f-b548-4a26-abba-5cc246094ec0/"
snip="Sci - fi, futuristic, photorealistic, clay painting."
notes="Caputes the ambience. Interesting placement of the guy at the bookstore
corner. Also, nice touch in placing the guiterist at a table with someone."
%}
{% include an-img.html id="09c5303eb213" model="Modjourney 5.2"
src="https://cdn.midjourney.com/25f0b245-10e4-4dea-a29b-09c5303eb213/0_1.png"
href="https://www.midjourney.com/app/jobs/529da417-22a9-4e15-9697-74e8fbb98f05/"
snip="Sci - fi, futuristic, photorealistic, clay painting."
notes = "Love the crowd. That girl playing guitar and her teddy! 😍"
%}
</div>

I tried a variation, with "3d" as the suffix instead of "clay painting". Select
result below:

<div class="row row-cols-1 row-cols-md-3">
{% include an-img.html id="c79c37cca14b" model="Modjourney 5.2"
src="https://cdn.midjourney.com/03fcece3-0bbf-4857-8c4f-c79c37cca14b/0_3.png"
href="https://www.midjourney.com/app/jobs/dd2181ef-baf6-44ce-9c0a-746a4b26b2c9/"
snip="Sci - fi, futuristic, photorealistic, 3d."
notes="Midjourney model missed a lot of things; but the art looks great!"
%}
{% include an-img.html id="ba77c9f73b20" model="Modjourney 5.2"
src="https://cdn.midjourney.com/450db819-dcb9-4497-81ab-ba77c9f73b20/0_3.png"
href="https://www.midjourney.com/app/jobs/3ca17186-8714-4d12-b3e9-8a800239c91f/"
snip="Sci - fi, futuristic, photorealistic, 3d."
notes="Midjourney model missed a lot of things; but the art looks great!"
%}
{% include an-img.html id="3e5b58ae7e8e" model="Modjourney 5.2"
src="https://cdn.midjourney.com/7ed7eb6a-ef07-4249-87b3-3e5b58ae7e8e/0_1.png"
href="https://www.midjourney.com/app/jobs/8c4799bd-4ded-4a36-ade6-a814097d9f23/"
snip="Sci - fi, futuristic, photorealistic, 3d."
tweaks="This is outpainted from a previous generation."
%}
</div>

It wasn't my intention, but looks like the moden hooked the style to Vincent
van Gogh's famous painting [The Starry Night](The Starry Night).

## DALL·E 3

I've tried same prompt on Chat GPT with DALL·E 3. Some outputs:

<div class="row row-cols-1 row-cols-md-3">
{% include an-img.html model="DALL·E 3"
src="https://ai.nafsadh.art/img/starry-downtown/dalle3-clay-1.png"
instruct="Nice weather. Sci-fi, futuristic, photorealistic, clay painting."
chat_gpt="Photo of a futuristic starry night where a pedestrian is walking. 
On one side, there's a cozy shop emitting a warm aroma of coffee and tea, 
with a signboard that reads 'Tea, Coffee & Light Snacks'. Adjacent to the 
cafe is a well-lit bookstore with an inviting ambiance. In the vicinity, 
a young girl with dark hair is passionately playing a stringed instrument. 
Groups of 3-5 individuals, of diverse descent and gender, are engaged in 
lively conversations. Among them, a young man with a skateboard is attempting 
a trick while a biker with a conspicuous red scarf zooms past. Some individuals 
are engrossed in their books, while others are lost in music, wearing headphones. 
The weather seems just right, not too cold, not too warm."
%}
{% include an-img.html model="DALL·E 3"
src="https://ai.nafsadh.art/img/starry-downtown/dalle3-clay-2.png"
instruct="Nice weather. Sci-fi, futuristic, photorealistic, clay painting."
chat_gpt="3D-rendered scene of a bustling futuristic street on a clear starry 
night. The main focus is on a pedestrian, caught in a moment of indecision. On 
one side, a cafe with modern architecture and floating menu boards emits a 
tantalizing aroma of coffee. Beside it, a bookstore with a transparent facade
showcases its collection in augmented reality. In the foreground, a girl of 
Asian descent creates melodies on a futuristic musical instrument, its sounds
visualized as light patterns. Diverse groups, each consisting of 3-5 individuals
of varying gender and descent, form pockets of animated conversations. A 
skateboarder, equipped with a tech-enhanced board, glides effortlessly, while a 
biker with a distinctive red scarf makes a swift passage. Some people are seen 
with advanced headphones, while others enjoy 
reading from their holographic books.  
The ambient temperature seems optimal, and floating lanterns add to the ambiance." 
%}
{% include an-img.html model="DALL·E 3"
src="https://ai.nafsadh.art/img/starry-downtown/dalle3-clay-3.png"
chat_gpt="Photorealistic rendering of a scene set in a futuristic urban setting 
under a starlit sky. Neon signs indicate a shop offering aromatic tea and coffee, 
next to which stands a bookstore with interactive book displays. A girl of Asian 
descent is engrossed in playing a musical instrument that sends ripples of light 
into the air. Background conversations from diverse groups of 3-5 people add to 
the ambiance. Amidst them, a skateboarder, surrounded by neon trails, is in the 
midst of a maneuver. A biker, distinguished by a vibrant red scarf, dashes through, 
leaving a trail of light. Some individuals, sporting state-of-the-art headphones, 
seem to be in their own worlds, while a few are engrossed in reading holographic 
books."
%}
</div>
