#!/bin/sh
echo "$PWD"
full=$(date +%Y-%m-%d-%H-%M-%S)
read year month day H M S <<< ${full//[-: ]/ }
slug="$year$month$day$H$M$S"
tempTitle="$year$month$day$H$M$S"

content="---
slug: $slug
title: $tempTitle
authors: [muf, orion]
tags: [$year, $year-$month, $year-$month-$day, MESSY]
---

## What's Up?

"
echo "$content" > "./blog/$full.md"

