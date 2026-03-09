---
# vim:foldmethod=marker:tw=100:ft=markdown
author: Donald Duck
title: Make Reveal.js
date: 13 July 2305<br/><br/><br/><br/><br/><br/>
theme: marcus
parallaxBackgroundImage: images/kit-bg-slide.png
title-slide-attributes:
    data-background-image: images/kit-bg-head.png
    <!--data-background-size: 90%-->
<!--REMOTE_USER: defaults to unix username-->
<!--REMOTE_HOST: cvs.data.kit.edu-->
<!--REMOTE_URL: http://cvs.data.kit.edu/~marcus/make-reveal-->
<!--REVEAL_DIR: public_html/reveal.js-->
<!--REVEAL_URL: /~marcus/reveal.js-->

---

# First section 

##  First slide
- <span style="color: red;">text</span>
- Be sure not to include any items outside the 2nd level sections, otherwise the 2d navigation will
    fail
    - asdf <span style="color: red;">lorem</span> ips ips
        - ipsum

- Just for testing
    - xxx xxxxxxxxxxx
    - xxxxxxxxxx (xxx xxxxx xxxxxxxxxx) xxxxxxxxxxx

## 2nd slide {data-transition="none-in zoom-out"}
<!--none	Switch backgrounds instantly-->
<!--fade	Cross fade — default for background transitions-->
<!--slide	Slide between backgrounds — default for slide transitions-->
<!--convex	Slide at a convex angle-->
<!--concave	Slide at a concave angle-->
<!--zoom	Scale the incoming slide up so it grows in from the center of the screen-->
<!--{data-transition-speed="fast">-->
<!--Choose from three transition speeds: default, fast or slow-->
- This whole thing is based on
    - [`pandoc`](https://pandoc.org/)
    - [`reveal.js`](https://revealjs.com/)
    - [`Make`](https://www.gnu.org/software/make/manual/make.html)
    - [`Markdown`](https://wikipedia.org/wiki/Markdown)

# Using Images 
# Using Images {data-background-image="images/scc-logo.png" data-background-size="contain"}
## {data-background-image="images/scc-logo.png" data-background-size="contain"}
## {data-background-image="images/scc-logo.png" data-background-size="cover"}
<!--data-background-position-->
            data-background-position="top 1000px right 25px"
            data-background-position="10% 25%"
<!--https://developer.mozilla.org/en-US/docs/Web/CSS/background-position-->

<!--data-background-opacity-->
## {data-background-image="images/scc-logo.png" data-background-size="contain" data-background-opacity="0.2"}
<!--data-background-video-->

    AARC Blueprint Architectures (BPA)
    AARC Policy Development Kit (PDK)

Users supported via

    DFN-AAI / eduGAIN
    Social: ORCID + Github + Google
    Homeless Users: Can easily be supported
## Fading example
- A list
<li class="fragment fade-up" data-fragment-index="1"> Fade up
<li class="fragment">Fade in
<li class="fragment fade-out">Fade out
<li class="fragment highlight-red">Highlight red
<li class="fragment fade-in-then-out">Fade in, then out
<li class="fragment fade-up">Slide up while fading in
<!--https://revealjs.com/fragments/-->
<!--fade-up	Slide up while fading in-->
<!--fade-down	Slide down while fading in-->
<!--fade-left	Slide left while fading in-->
<!--fade-right	Slide right while fading in-->
<!--fade-in-then-out	Fades in, then out on the next step-->
<!--fade-in-then-semi-out	Fades in, then to 50% on the next step-->
<!--grow	Scale up-->
<!--shrink	Scale down-->
<!--strike	Strike through-->
<!--highlight-red	Turn text red-->
<!--highlight-green	Turn text green-->
<!--highlight-blue	Turn text blue-->
<!--highlight-current-red	Turn text red, then back to original on next step-->
<!--highlight-current-green	Turn text green, then back to original on next step-->
<!--highlight-current-blue	Turn text blue, then back to original on next step-->

## Images:
- Integrate SSH with novel AAIs 
    (<a href="https://aai.egi.eu">
        <img style="vertical-align:middle" height="30" data-src="https://aai.egi.eu/registry/img/logo.png">
    </a>
    <a href="https://eduteams.org">
        <img style="vertical-align:middle" height="30" data-src="https://eduteams.org/img/eduteams_logo.jpg"></a>
    <a href="https://iam-test.indigo-datacloud.eu.org">
        <img style="vertical-align:middle" height="30" data-src="https://iam-test.indigo-datacloud.eu/resources/images/indigo-logo.png">
    </a>
    <a href="https://b2access.eudat.eu/home/">
        <img style="vertical-align:middle" height="30" data-src="https://www.eudat.eu/sites/default/files/B2ACCESS_Cube.png">
    </a>
    <a href="https://perun.cesnet.cz">
        <img style="vertical-align:middle" height="30" data-src="https://perun.cesnet.cz/signpost/images/perun_3.png">)
    </a>


Works in Production tod



<!-- ########################################################################################### -->


<!-- ## test { style="font-size: 45px; width: 25%; "} -->
<!-- asdfasdf -->


<!-- ########################################################################################### -->


## Documentation {data-background-color="#333333"}

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

<div style="position: fixed;
            top:6%; width: 74%;
            left: 37%;
            margin-right:0;
            margin-top:0;
            text-align: left;
            font-size: 25px;
            ">

<https://doc.nfdi-aai.de>
</div>
<div id="handbook"
     style="position: fixed;
            top:15%; left: -5%;
            width: 152%;
            height: 120%;
            vertical-align: middle;
    ">
<iframe
    id="frame"
    src="https://nfdi-aai.de"> </iframe>
</div>


<!-- ########################################################################################### -->


## AARC
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

<div style="position: fixed;
            top: 14%; width: 90%;
            left: 0%;
            margin-right:0;
            margin-top:0;
            text-align: left;
            ">
Authentication and Authorisation<br/>for Reserach Communities
</div>

<div style="position: fixed;
            top:40%; width: 70%;
            left: 0%;
            margin-right:0;
            margin-top:0;
            text-align: left;
            ">
- Three funding cycles
<ul>
<li> AARC: <blue>May 2015 - Apr 2017</blue>
<li> AARC2: <blue>May 2017 - Apr 2019</blue>
<li> AARC TREE: <blue>Mar 2024 - Feb 2026</blue>
<ul class="fragment fade-in" data-fragment-index="1">
- Technical Revision to Enhance Effectiveness
</ul>

<div
            style="position: fixed;
            top:0%; width: 72%;
            left: 75%;
            margin-right:0;
            margin-top:0;
            text-align: left;
            font-size: 25px;
            ">
<img src="images/aarch-tree-partners.png"/>
</div>


<!-- ########################################################################################### -->


## Architecture {data-background-image="images/architektur-glow.png"
                 data-background-size="contain"
                 style="font-size: 45px; text-align: left;"}
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
