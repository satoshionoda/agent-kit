# agent-kit

個人のAI活用環境として、会話・作業の方針、自作スキル、テンプレートを管理する。作者が日常的に使う内容を、AIの使いこなしの参考として共有する。

内容の編集・管理は作者が行う。スタッフへの共有は閲覧用とし、共有先のリポジトリでは読み取り権限のみを付与する。チーム共通のルールとして適用するものではない。

## 読み方

文書とスキルの入口は [index](index.md)。AIには [AGENTS](AGENTS.md) を読み込ませ、そこから共通方針と必要なスキルを参照させる。Codex以外のAIでも、必要なMarkdownを直接読ませて使える。

## Obsidianで編集する

ObsidianのVault管理画面から「Open folder as vault」を選び、このリポジトリのフォルダを開く。Vault名は `agent-kit` とする。

ノートは通常のMarkdownリンクを基本とし、既存のfrontmatterやObsidian記法を保持する。フォルダの案内は `index.md`、使い方や管理方針は `README.md` に置く。

`.obsidian/app.json` の編集設定だけをGitで管理する。画面配置やプラグインの個人設定、ゴミ箱、ログは管理対象に含めない。Obsidian Syncを使う場合は、このVault用に別途設定する。

## Codexでスキルを使う

リポジトリのルートで、使いたいスキルごとに次を実行する。

```bash
bash _scripts/link-skill.sh writing-tune
```

`writing-tune` を `Skills/` 内のスキル名に置き換える。スクリプトは `~/.codex/skills/<skill-name>` から対象スキルへのシンボリックリンクを作成する。別のリンクや実ディレクトリがある場合は上書きせず停止する。

会話・作業の共通方針も使う場合は、利用するAIの指示ファイルに、このリポジトリ内の `Personality.md` と `OperatingPrinciples.md` の所在を記載する。配置先に応じてパスを設定する。

## 移行元

2026年11月2日に `everyday/Agent/` と `everyday/_scripts/link-skill.sh` から分離した。移行前の履歴はeverydayリポジトリに残し、agent-kitでは移行時の内容から履歴を管理する。
