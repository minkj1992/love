---
title: "COW"
subtitle: "clone-on-write"

summary : ""
description: ""

date: 2023-04-03T15:35:29+09:00
lastmod: 2023-04-03T15:35:29+09:00

author: "leoo.j"
authorLink: "https://github.com/minkj1992"

featuredImage: "/images/cow.png"
tags: ["dev"]
categories: [""]

lightgallery: true
draft: true
---

dfinity/ic 코드를 보다 이해되지 않는 코드들이 있어, Cow를 왜 사용하는지 정리하려 합니다.
<!--more-->

## TL;DR

```rs
pub enum Cow<'a, B>
where
    B: 'a + ToOwned + ?Sized,
{
    Borrowed(&'a B),
    Owned(<B as ToOwned>::Owned),
}
```

- Cow의 약어 뜻은 clone-on-write로 read가 아닌 write시 clone시킬 수 있는 기능을 가지고 있습니다.
- Cow는 Borrowed, Owned를 구분하는 enum 타입입니다. 
- 제너릭 `B`는 'a와, ToOwned, ?Sized로 바운드 되어있습니다.
- 



```rs
#[derive(CandidType, Deserialize, Clone)]
struct LogoResult {
    logo_type: Cow<'static, str>,
    data: Cow<'static, str>,
}

// ...
const DEFAULT_LOGO: LogoResult = LogoResult {
    data: Cow::Borrowed(include_base64!("logo.png")),
    logo_type: Cow::Borrowed("image/png"),
};

```