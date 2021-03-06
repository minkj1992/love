---
title: "Robotics Coding Challenge"
date: 2022-01-06T13:49:15+09:00
author: "leoo.j"
authorLink: "https://github.com/minkj1992"
description: "I applied for a robotics company and got a coding interview."
draft: true
tags: ["algorithm", "interview"]
categories: ["algorithm"]
lightgallery: true

featuredImage: "/images/robot.jpeg"
---

> This document records the series of experiences that a back-end server developer has experienced when moving to robotics in the second half of the year 2021. (2021.12.25 - 2022.01)

<!--more-->

<Admonition type="tip" icon="๐ก" title="Did you know...">
  <p>
    Use plugins to introduce shorter syntax for the most commonly used JSX
    elements in your project.
  </p>
</Admonition>

**์ด๋ 2021 11์** `Rust`๋ฅผ ๊ณต๋ถํ๊ณ  ์ถ๋ค๋ ์๊ฐ์ด ๋ค์ด์ ํ  ๋งํ ์ฌ์ด๋ ํ๋ก์ ํธ ์ฃผ์ ๋ฅผ ์ฐพ๋ ์ค `ROS`๊ฐ ์ฌ๋ฐ๊ฒ ๋ค๋ ์๊ฐ์ ๋ก๋ณดํฑ์ค๋ฅผ ๊ณต๋ถํ๊ฒ ๋์๋ค. (๊ทธ๋ฐ๋ฐ ์ง๊ธ์์ ๋์ด์ผ ๋ณด๋ ์ด ์์ฅ์ `C++`, `Pyhton`๋ฟ..)

๊ทธ๋ ๊ฒ ๋ก๋ณดํฑ์ค ๊ณต๋ถ์ ์๋ฃ ์กฐ์ฌ๋ฅผ ํ๋ ๊ณผ์ ์์ `boston dynamics`, `naver labs`, `bear`๋ฑ์ ๊ธฐ์์ ์ฐพ์๋ณด๊ฒ ๋์๊ณ , ๋ฐฑ์๋ ๊ฐ๋ฐ์์ ๊ฒฝ๋ ฅ์ด ํตํ ์ง ๊ถ๊ธํด์ ์ด๋ ฅ์๋ฅผ ์ ์ถํด ๋ณด์๋ค.

์์ด resume๊ฐ ์ต์ํ์ง ์์์ ๋ฏธ๊ตญ์ ์ด๊ณ  ์๋ ์นํ์ ์ฝ์น๋ฅผ ๋ฐ์ผ๋ฉฐ, ์ด์ฐ์ด์ฐ ์ด๋ ฅ์๋ฅผ ์ ์ถํ๊ฒ ๋์๊ณ  ์ง์ ํ ๊ณณ ์ค ํ ๊ณณ์์ ์ฐ๋ฝ์ด ์์ ์ฝ๋ฉํ์คํธ๋ฅผ ๋ณด๊ฒ ๋์๋ค. (~~์ฌ์ค ๋ก๋ณดํฑ์ค ํ์ฌ๊ฐ ์ง์ํ  ๊ณณ์ด ๊ตญ๋ด์๋ 2๊ณณ ๋ฐ์ ์๋ค~~)

{{< admonition note FYI >}}
์ฐ๋ฝ์ด ์จ ํ์ฌ์ ์ํ ์ผ์ ์ ๋ค์๊ณผ ๊ฐ๋ค.

resume > online coding challenge(5 days) > 1st interview > cto interview.  
{{< /admonition >}}

## 1. Online Coding Challenge (Algorithm)

์๊ณ ๋ฆฌ์ฆ ๋ฌธ์  3๋ฌธ์ ์ ํน์ ํ ํ๋ก๊ทธ๋จ์ ๋ง๋ค์ด์ผ ํ๋ ๊ณผ์ ๊ฐ ์ฃผ์ด์ก๋ค. ์ด๋ฉ์ผ๋ก ๋งํฌ๋ฅผ ํด๋ฆญํ๋ฉด ์ํ์ด ์์๋๋ฉฐ ์ด 5์ผ์ ๋ ๋ฐ๋๋ผ์ธ์ด ์ฃผ์ด์ก๋๋ฐ, ์ฒด๊ฐ์ ์ดํ(10์๊ฐ)์ ๋ ์ง์คํ๋ฉด ์ถฉ๋ถํ ์๊ฐ์ธ ๋ฏ ํ๋ค.

์๊ณ ๋ฆฌ์ฆ์ ๋ฌธ์  ๋์ด๋๋ ํ๋ก๊ทธ๋๋จธ์ค 2~3๋ ๋ฒจ ์ ๋๋ผ์, ๋ฉด์ ์ ๋ฌผ์ด๋ณผ ๊ฑธ ๋๋นํด ์ต๋ํ ๊น๋ํ๊ฒ ์ฝ๋๋ฅผ ์ง๋ ค๊ณ  ๋ธ๋ ฅํ๋๋ฐ ๊ทธ๊ฑธ ๊ฐ์ํ๋๋ผ๋ ๋ง์์ผ 3์๊ฐ ์ ๋๋ฉด 3๋ฌธ์  ๋ชจ๋ ํ ์ ์์๋ ๊ฒ ๊ฐ๋ค. (5์ผ ์ฃผ๊ธธ๋ ๊ดํ ์ซ์..)

- string ๊ด๋ จ

```python
"""
time: O(n)
space: O(1)
"""
from typing import Optional


NUMBERS = list(range(10))
WORDS = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
OPERATORS = {"minus": "-", "plus": "+"}
N2W = {n: w for n, w in zip(NUMBERS, WORDS)}
W2N = {w: n for w, n in zip(WORDS, NUMBERS)}


def string_challenge(raw_input: str) -> str:
    n = len(raw_input)
    start = 0
    count = 0
    word_len = (3, 4, 5)
    expr = ""
    for i in range(n + 1):
        if count in word_len:
            word = decode(raw_input[start:i])
            if word:
                expr += word
                count = 0
                start = i
        count += 1
    num = eval(expr)
    return encode(num)


def decode(string: str) -> Optional[str]:
    if string in OPERATORS:
        return OPERATORS[string]
    if string in W2N:
        return str(W2N[string])
    return None


def encode(num: int):
    string_num = ""
    for n in str(num):
        if n == "-":
            string_num += "negative"
            continue
        string_num += N2W[int(n)]
    return string_num


# keep this function call here
print(string_challenge(input()))

```

- array ๊ด๋ จ (`binary tree`)

```python
"""
time: O(n)
space: O(1)
"""

from collections import defaultdict
from typing import List, Tuple, Dict


def is_binary_tree(arr: List[str]) -> bool:
    """
    1. #child > 2
    2. child's parent > 1
    3. multiple tree
    """
    p2c: dict = defaultdict(list)  # parent : [c1,c2..]
    c2p = {}  # child:parent

    for str_tuple in arr:
        child, parent = parse(str_tuple)

        if len(p2c[parent]) == 2:
            return False
        p2c[parent].append(child)

        if child in c2p:
            return False
        c2p[child] = parent

    return is_single_tree(p2c, c2p)


def parse(str_tuple: str) -> Tuple[int, int]:
    str_pair = str_tuple.split(",")
    child = int(str_pair[0][1:])
    parent = int(str_pair[1][:-1])
    return child, parent


def is_single_tree(p2c, c2p) -> bool:
    root = None
    for parent in p2c:
        if root not in c2p:
            if root:
                return False
            root = parent
    return True


# keep this function call here
answer = "true" if is_binary_tree(input()) else "false"
print(answer)
```

- math ๊ด๋ จ (`postfix calculate`)

```python
"""

"""
OPERATOR = ("+", "-", "*", "/")


def calculate(postfix_notation: str) -> int:
    stack = []
    for s in postfix_notation.split():
        value = None
        if not is_operator(s):
            value = int(s)
        else:
            r_value = stack.pop()
            l_value = stack.pop()
            expression = f"{l_value}{s}{r_value}"
            value = int(eval(expression))
        stack.append(value)

    return stack[0]


def is_operator(s: str) -> bool:
    return s in OPERATOR


# keep this function call here
```

## 2. Online Coding Challenge (Assignment)

Online coding ํ์คํธ๋ ์ด ์๊ณ ๋ฆฌ์ฆ 3๋ฌธ์ ์ ๊ณผ์ ๊ฐ ํ๋ ์ฃผ์ด์ง๋๋ฐ, 5์ผ์ด๋ ์๊ฐ์ ์ฃผ์๋๊ฒ ์ด `assignment` ๋๋ฌธ์ด ์๋๊น ์๊ฐ๋๋ค.
๋ฌธ์ ๋ `Simple xxx controller`๋ฅผ ๊ตฌํํ๋ ๊ฒ์ธ๋ฐ, ๋ฌธ์  ์๊ตฌ ์ฌํญ์ ๊ฐ๋จํ์ง๋ง `Employer`๋ค๊ป ์ ๋ณด์ด๋ ค๋ฉด ๊ฐ๋จํ๊ฒ ์ ์ถํ๋ฉด ์ ๋  ๊ฒ ๊ฐ์ ์ง๊ฐ์ด ๋นก์์ ์๊ณ ๋ฆฌ์ฆ์ ํ๊ณ  ํด๋น sw ์ปจํธ๋กค๋ฌ ๊ด๋ จ ์ ๋ณด๋ฅผ ๋ชจ์ผ๋๋ฐ 5์๊ฐ ๋๊ฒ ์๋ชจํ ๊ฒ ๊ฐ๋ค.

๊ทธ ๋ค ์ธ์ด ๊ฑฐ์ฐฝํ๋ ๊ณํ..

- [x] Design pattern ํ๊ฐ ์ด์ ์ฌ์ฉํ์
- [x] Unit ํ์คํธ๋ Coverage 80% ๋๊ธฐ์.
- [-] Integration ํ์คํธ๋ pytest-bdd๋ฅผ ํ์ฉํด ์๋๋ฆฌ์ค๋ค์ ์ถ๊ฐํ์.
- [x] ํธ๋์ญ์์ ๊ตฌํํด์ ์๋ฌ๊ฐ ์๊ธฑ ๊ฒฝ์ฐ rollback ์ํค๋ ๊ธฐ๋ฅ์ ์ถ๊ฐํ์
- [x] README๋ ๊ผผ๊ผผํ!

์์น ๊ฒฐ๊ณผ ํด๋น ๊ณผ์ ์ ์ด์ธ๋ฆฌ๋ ํจํด์ ์ด 3๊ฐ์ง๋ก `state pattern`, `command pattern`, `chain of responsibility` ์ ๋๊ฐ ์์๋ ๊ฒ ๊ฐ๋ค. controller๊ฐ ์ฌ๋ฌ๊ฐ์ง ์ํ๋ฅผ ๊ฐ์ง๊ณ , ๊ทธ์ ๋ฐ๋ผ์ ์คํ๋์ด์ผ ํ  stage์ ๋ฐ๋ผ์ ๋ฉ์๋๋ค์ด ๋ค๋ฅด๊ฒ ์ ๊ทผ ๋์ด์ผ ๋๋ค๋ ์ ์์ `state-pattern`์ด ์ข์ ๋ณด์๋ค. ์ด 10๊ฐ์ง ์ ๋ state๋ฅผ ํด๋์ค๋ก ๊ตฌํํ์๋๋ฐ, ๋ง๋ค๊ณ  ๋ณด๋๊น state ํด๋์ค๋ณ๋ก **์คํ๋์ง ๋ง์์ผํ  method**๋ค์ ์๋ฌ ๋ฉ์์ง๋ฅผ ์ผ์ผํ ๊ตฌํํด์ฃผ๋ ๋ถ๋ด์ด ์์๊ณ , ๋ฌด์๋ณด๋ค ๋ด๊ฐ ๋ง๋๋ controller๊ฐ 10๊ฐ ์ ๋์ state์ ๋น์ฆ๋์ค๋ก์ง์ด ํผ์ ธ์์ด ๊ฐ๋์ฑ์ด ๋จ์ด์ก๋ค.

๊ทธ๋์ ๊น๋ํ๊ฒ ํฌ๊ธฐํ๊ณ , ์ ํํ `command pattern`.
ํธ๋์ญ์์ ๊ตฌํํ๊ณ  ์ถ์๊ธฐ ๋๋ฌธ์, `undo`, `redo`๊ธฐ๋ฅ์ ํธํ๊ฒ ๊ตฌํํด์ผ ํ์๋๋ฐ `Command Pattern`์ ์ฌ์ฉํ๋ ๋ฐฐ์น๋ก ์ฌ๋ฌ ์์์ ๋ฌถ์ด์ ์คํํ๋ฉด ๋์ด์ ํธํ๊ฒ ๊ตฌํ์ด ๋์๋ ๊ฒ ๊ฐ๋ค. ๊ฑฐ๊ธฐ๋ค ๊ตฌํํด์ผ ํ๋ controller๊ฐ ์ถํ์๋ ๋ ๋ง์ command๋ฅผ ๋ฐ์๋ค์ฌ์ผ ํ๋ ์๊ตฌ์ฌํญ์ด ์์๊ธฐ ๋๋ฌธ์, ๋ช๋ น๋ค์ ๋ถ๋ฆฌํด์ ๊ด๋ฆฌํ  ์ ์์ด ์ข์๋ ๊ฒ ๊ฐ๋ค.

ํ์์ ๋์์ธ ํจํด์ ํ์์์ ๋ง์ด ์จ๋ณด์ง ๋ชปํด์ ์ต์ํ์ง ์์๋๋ฐ, ์ด๋ฒ ๊ธฐํ์ ๊ณต๋ถํ๋ฉด์ ๊ตฌํํด๋ณด๋ ์ฌ๋ฐ์๋ ๊ฒ ๊ฐ๋ค.
๋ง์ง๋ง์ผ๋ก `chain of responsibility`๋ฅผ ์ ์ฉํด ๋ณด๋ ค๊ณ  ํ๋๋ฐ, ์ฌ์ค ์ด๊ฑด ์ด๋ฆ๋ถํฐ ๋๋ฌด ๊ธธ์ด์ ๋ง์์ ๋ค์ง ์์๊ธฐ๋ ํ๊ณ  ํ์คํธ ์ฝ๋ ์ง๋ ค๋ ์๊ฐ๋ ๋ถ์กฑํ ๊ฒ ๊ฐ์์ ๋ฐ๋ก ์์ ํ๋ค. (์นด๋ฆฌ์ค๋ง๐ช.. ์ฐข์๋ค...)

~~๊ธ์ ์ฐ๋ค ๋ณด๋ ๊ฐ์๊ธฐ ๊ท์ฐฎ์ ์ ธ์ ๊ธํ๊ฒ ๋ง๋ฌด๋ฆฌ ํ์๋ฉด~~ ๊ทธ๋ ๊ฒ ์ค๊ฐ์ ์ฝ์๋ค๋ ์๊ณ  ํด์ ํ์คํธ๋ ์๋ ๊ณํํ๋ bdd๋ ์๋๋ฆฌ์ค๋ง ์ง์ ์ ์ถํ๊ฒ ๋์๋ค. ์ฌ์ค ์๋ simpleํ controller์ด๋ค ๋ณด๋ integration ํ์คํธ๊ฐ ์๋ฏธ ์๊ธด ํ์ง๋ง bdd๋ ์ง๋ณด๊ณ  ์ถ์๋๋ฐ ์กฐ๊ธ ์์ฝ๋ค. [๐คซ..](https://github.com/minkj1992/atm_controller)

## 3. Prepare Interview (4 round)

{{< admonition tip >}}
๋ฉด์ ์ ์ด 4์๊ฐ ๋์ ์ด๋ค์ง๋ฉฐ, ๋งค ์๊ฐ๋ง๋ค ๋ด๋น์์ 1:1 ๋ฉด์ ์ด ์งํ๋ฉ๋๋ค. ๋ฏธ๊ตญ๊ณผ ํ๊ตญ ๋ฉด์ ๊ด๋ค์ด ์กฐ์จํ์ฌ ๋ค์ด์ค์๋ฉฐ, zoom์ผ๋ก ์น๋ค์ง๋๋ค.
{{< /admonition >}}

### ๊ณตํต ์ง๋ฌธ ์ค๋น

- self-introduction
- motivation to change career
- ๋ํ ํ๋ก์ ํธ ์ค๋ช
- strength and weakness
- ๋์ธํ๋
- ๊ด์ฌ์๋ ๊ธฐ์ 

### ์ด๋ ฅ์ ๊ธฐ๋ฐ ์ง๋ฌธ ์ค๋น

- icp

### ์ผ๋ฐ์ ์ธ cs ์ง๋ฌธ ์ค๋น

- DB
  - What is the main difference of delete and truncate in SQL?
    - `delete`: ๋ฐ์ดํฐ๋ง ์ญ์  ๋๋ฉฐ ํ์ด๋ธ ์ฉ๋์ ์ค์ด ๋ค์ง ์๋๋ค.
      - ํ์ด๋ธ ์ ์ง / ๋ฐ์ดํฐ ์ญ์  / ๋กค๋ฐฑ o (์ ์ฅ๊ณต๊ฐ ์ ์ง)
    - `trucanate`: ํ์ด๋ธ์ ์ต์ด ์ํ๋ก ๋๋๋ฆผ
      - ํ์ด๋ธ ์ ์ง / ๋ฐ์ดํฐ ์ญ์  / ๋กค๋ฐฑ x
    - `drop`: ํ์ด๋ธ์ ์ ์ ์์ฒด๋ฅผ ์์ ํ ์ญ์ ํ๋ค.
      - ํ์ด๋ธ ์ญ์  / ๋ฐ์ดํฐ ์ญ์  / ๋กค๋ฐฑ x
  - [uuid](https://github.com/aragorn/home/wiki/Database-Key-Design)
  - Why do we need cherry-pick command in git?
    - ํ์ฌ ๋ธ๋์น๊ฐ ์๋ ๋ค๋ฅธ ๋ธ๋์น์ ํน์  commit์ ํ์ฌ ๋ธ๋์น๋ก ๊ฐ์ ธ์ค๊ณ  ์ถ์ ๋
- Web
- Hash collision
  - ํ๋ฅ ์ ์ผ๋ก 1ํผ ๋ฏธ๋ง์ผ๋ก ํ๋ ค๋ฉด?

### Coding ๊ณผ์  ๋ฆฌ๋ทฐ ์ค๋น

- How to get handled the security threat in getting access to the docker volume?
- what is the path normalization?

### ํ๋ฉด ๊ณต์  ์จ๋ผ์ธ ์ฝ๋ฉ ํ์คํธ ์ค๋น (2๋ฒ)

- leetcode medium to hard
- bfs / dfs
- heap
- dp(interleaving)

```python
# https://leetcode.com/problems/interleaving-string

import pprint

def is_interleaved(s1: str, s2: str, s3: str) -> bool:
    n, m = len(s1), len(s2)
    if (n + m) != len(s3):
        return False
    board = [[False] * (m + 1) for _ in range(n + 1)]
    for i in range(n + 1):
        for j in range(m + 1):
            # check edge
            if i == j == 0:
                board[i][j] = True
                continue
            if i == 0:
                if s2[j - 1] == s3[i + j - 1]:
                    board[i][j] = board[i][j - 1]
                continue
            if j == 0:
                if s1[i - 1] == s3[i + j - 1]:
                    board[i][j] = board[i - 1][j]
                continue
            # check except edge
            if s1[i - 1] == s3[i + j - 1]:
                if s2[j - 1] == s3[i + j - 1]:
                    board[i][j] = board[i - 1][j] or board[i][j - 1]
                else:
                    board[i][j] = board[i - 1][j]
            else:
                if s2[j - 1] == s3[i + j - 1]:
                    board[i][j] = board[i][j - 1]
    pprint.pprint(board)
    return board[n][m]


s1 = "aabcc"
s2 = "dbbca"
s3 = "aadbbcbcac"
is_interleaved(s1, s2, s3)

s1 = "abcde"
s2 = "12345"
s3 = "12345abcde"
is_interleaved(s1, s2, s3)
```

## 4. Do Interview (4 round)

> success

## 5. payment

> fin

## 6. apartment

> todo

<center>-๋-</center>
