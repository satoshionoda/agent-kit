---
audience:
  - vault_ai
  - external_ai
---
このフォルダには、この vault で Git 管理する自作スキルを置きます。
Codex から使う実体は `~/.codex/skills` 側に見せつつ、このフォルダで内容を管理します。

# 配下ノート

- [linear-project-workflow/SKILL](linear-project-workflow/SKILL.md)
    - 計画の人間レビューから実装・検証・進捗記録までを一貫して進めるスキル
- [grill-me/SKILL](grill-me/SKILL.md)
    - 企画や設計の論点を一問ずつ深掘りする対話スキル
    - 壁打ちや設計レビューを進めるときに読む
    - 該当作業の前に参照する
- [skill-bootstrap/SKILL](skill-bootstrap/SKILL.md)
    - 新しいスキルの雛形作成とシンボリックリンク作成を支援するスキル
    - 自作スキルを増やすときに読む
    - 最初に参照する
- [writing-tune/SKILL](writing-tune/SKILL.md)
    - 文章作成ガイドに沿って、文章化やコンテクスト整理を行うスキル
    - 人間からノートや文章断片の文面調整を依頼されたときに読む
    - 該当作業の前に参照する

# 方針

- スキルごとに `Skills/<skill-name>/` を作成してください。
- スキル名は、Codex から `$skill-name` で呼びやすい短い英語を優先してください。
- `SKILL.md` を Git 管理し、補助資料も同じフォルダに閉じて置いてください。
- `~/.codex/skills/<skill-name>` には、原則としてこのフォルダへのシンボリックリンクを作成してください。
- Codex 側の `.system` スキルは、この vault では管理しません。
