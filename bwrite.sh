#!/bin/sh
echo "$PWD"
full=$(date +%Y-%m-%d-%H:%M:%S)
read year month day <<< ${full//[-: ]/ }

content="
---
slug: #!SLUG
title: #!TITLE
authors: [muf, orion]
tags: [$year, $year-$month, $year-$month-$day, #!MESSY]
---

## What's Up?

"
printf "$content" > "./blog/$full.md"

