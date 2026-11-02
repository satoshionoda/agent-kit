---
name: skill-bootstrap
description: agent-kitで、新しい Codex スキルの雛形作成、関連ドキュメント整備、`~/.codex/skills` へのシンボリックリンク作成までを進める。
---

# Skill Bootstrap

## Overview

この vault 内で管理する自作スキルを、新規作成または初期整備するためのスキルです。
`Skills/<skill-name>/` でスキルを管理し、必要に応じて [SkillTemplate](references/SkillTemplate.md) を使いながら `SKILL.md` を作成し、最後に `~/.codex/skills/<skill-name>` へのシンボリックリンクを作ります。

## When To Use

- 新しい自作スキルをこの vault で管理し始めたいとき
- 既存のローカルスキルを、この vault 側へ移したいとき
- スキル用の雛形、補助資料、リンク作成までまとめて整えたいとき

## Workflow

1. まず `AGENTS.md`、`Personality.md`、`index.md`、`README.md` を確認します。
2. 文章作成や編集を伴うので、[Writing Tune](../writing-tune/SKILL.md) を参照します。
3. [Skills/index](../index.md) と [SkillTemplate](references/SkillTemplate.md) を確認し、対象スキルの置き場所と雛形を決めます。
4. `Skills/<skill-name>/SKILL.md` を作成または更新し、補助資料があれば同じフォルダにまとめます。
5. 必要なら `index.md` や関連インデックスに導線を追加します。
6. 最後に `_scripts/link-skill.sh <skill-name>` を使って、`~/.codex/skills/<skill-name>` へのシンボリックリンクを作成します。

## Safety Checks

- `~/.codex/skills` 全体を別ディレクトリへのシンボリックリンクに置き換えないでください。
- `~/.codex/skills/.system` 配下は、Codex 管理領域として扱い、編集や移動の対象にしないでください。
- 既存の `~/.codex/skills/<skill-name>` が実ディレクトリや別リンクとして存在する場合は、内容を確認せず上書きしないでください。
- スキルの作成先は、原則として `Skills/<skill-name>/` に固定してください。

## References

- [Skills/index](../index.md)
- [SkillTemplate](references/SkillTemplate.md)
- [_scripts/link-skill.sh](../../_scripts/link-skill.sh)
