---
title: "Unanimosity"
subtitle: "Project Overview"
description: "An introduction to Unanimosity, the open-source project aiming to improve predictive analytics by combining machine learning with swarm psychology"
image: "/assets/images/pexels-photo-158976.jpeg"
tags:
    - data-science
    - software-development
    - web-design
---

Do you have a friend that seems to be able to pick the winner of every other horse race no matter how long or short the odds are? Do you get frustrated by the apparent lack of rhyme or reason inherent in that friend's selections, and that friend's inability *(or unwillingness)* to tell you how they pick the horses they do?

I do! That's why I'm developing **Unanimosity**, a personal project that aims to improve the effectiveness of *predictive analytics* by combining *machine learning* with *swarm psychology* to gain insights into how seemingly lucky people overcome chaos to consistently predict the outcome of events that otherwise appear to be random.

Through **Unanimosity**, I hope to investigate my theory that predictions sourced from a variety of predictors (both *human intelligence* and *artificial intelligence*) can be averaged (with weighting based on each predictor's past performance) to generate aggregate predictions that are more accurate than any individual predictor's performance over time. Furthermore, by examining the most accurate *artificial intelligence* predictors, it should be possible to gain insights into how our lucky *(human)* friends come up with the predictions that they do!

## Architectural Analysis

Users will be able to interact with **Unanimosity** via a *web application*. The web application will enable users to view the aggregate predictions for future events. Given the importance of *swarm psychology* to the process of generating these aggregate predictions, the web application will require each user to submit their own predictions for a given event before displaying the aggregate predictions for that event.

The web application will be backed by a *RESTful API* that manages access to the event data and associated predictions. The RESTful API will make it easier to develop **Unanimosity** clients for other platforms (such as mobile and desktop) in the future without rewriting the core business logic.

The RESTful API will work alongside a secondary *worker process* that is responsible for keeping the dynamic event data up to date. The worker process will regularly poll online data sources for updated event data, and will trigger the generation of *machine learning* predictions when new or updated event data becomes available. The worker process will also trigger the recalculation of predictor accuracy ratings (for both *human* and *machine* predictors) when new event results become available.

The worker process will make use of a couple of custom-built libraries to provide required functionality, including:

- Obtaining event data from online data sources; and
- Generating *machine learning* predictions for events.

Of course, the RESTful API and worker process will both need access to the same event data and predictions via a shared data store.

## Implementation Plan

My plan is to implement **Unanimosity** in three phases...

### Phase 1: Pre-Launch

Unlike most other personal projects, **Unanimosity** depends on having a group of active users *(other than myself)* due to its reliance on *swarm psychology*. Accordingly, it will be wise to set up a *pre-launch landing page* where interested people can register their interest to start building up the swarm.

### Phase 2: Back-End Systems

To add *artificial intelligence* to the swarm, the *supervised machine learning* algorithms will need to be trained on an extensive library of historical event data. Obtaining this data and training the *machine learning* predictors could be a time-consuming process, so I'd like to get it running in the background while I work on developing the actual web application.

Accordingly, phase 2 of my implementation plan will involve developing the following components:

- The data acquisition library;
- The *machine learning* library;
- The worker process.

### Phase 3: Web Application

With a swarm of interested users and trained *machine learning* predictors in place, the final phase involves bringing the two together and seeing how the whole system fares when presented with future events.

Accordingly, phase 3 of my implementation plan will involve developing the remaining components:

- The RESTful API
- The web application

## Check It Out!

**Unanimosity** is an *open-source project*, so you can track my progress via the [unanimosity GitHub organization](https://github.com/unanimosity){: target="_blank" }.

Of course, I will also publish regular project updates right here, so please [subscribe to my RSS feed]({{ '/feed.xml' | relative_url}}) if this project interests you...
