---
audience:
  - vault_ai
  - external_ai
docType:
  - template
---
このノートは、自作スキル用の `SKILL.md` 雛形です。
新しいスキルを作るときは、必要な箇所だけを書き換えて使ってください。

# Template

```md
---
name: <skill-name>
description: <このスキルを使う場面と役割を 1 文で書く>
---

# <Skill Name>

## Overview

<このスキルが何をするかを簡潔に書く>

## When To Use

- <使う場面 1>
- <使う場面 2>

## Workflow

1. <手順 1>
2. <手順 2>
3. <手順 3>

## Safety Checks

- <勝手にやらないこと>
- <確認が必要な条件>

## References

- <必要なら、この vault 内の参照ノートやファイル>
```

# 補足

- frontmatter の `name` は、`$` で呼び出すときの名前に合わせてください。
- 補助資料がある場合は、同じスキルフォルダ内に置いて相対参照してください。
- スキル本体に書くのは、実行時に必要な指示だけを優先してください。
