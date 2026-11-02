# agent-kitで作業するAIへの指示

このリポジトリは、個人のAI活用環境を管理するObsidian Vaultでもある。目的と使い方は [README](README.md)、文書とスキルの一覧は [index](index.md) を参照する。

## 最初に読む

1. [Personality](Personality.md) を最初に読む。
2. 直後に [禁止ワード](Skills/writing-tune/references/Rules/禁止ワード.md) を読む。
3. 自律的に作業するときは [OperatingPrinciples](OperatingPrinciples.md) を読む。
4. 記録・共有する文章を作成・編集するときは [Writing Tune](Skills/writing-tune/SKILL.md) を使う。

## ファイルの扱い

- MarkdownはObsidianノートとして扱い、リンク、埋め込み、タグ、callout、タスクチェックボックス、block referenceを保持する。
- 明示的な依頼がない限り、frontmatterを追加・削除・正規化しない。
- ノートの移動や改名では、参照元とスキルのリンク先も確認する。
- 自作スキルは `Skills/<skill-name>/` に置き、参照資料やテンプレートも同じスキル内にまとめる。
- このリポジトリ内の参照は、各ファイルを基準にした相対パスを使う。利用者の絶対パスを共通文書に埋め込まない。
- 個人用の方針として管理し、依頼なしにチーム共通ルールへ一般化しない。
