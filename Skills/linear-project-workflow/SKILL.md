---
name: linear-project-workflow
description: Linear Projectの計画、DescriptionとIssue設計の人間レビュー、実装・検証、進捗記録を一貫して進める。計画だけ、実装からの再開、単独での実装、Workerへの委任にも対応する。
---

# Linear Project Workflow

## 担当と適用範囲

ひとつのオーケストレーターが、計画から実装・検証・完了まで継続して担当する。役割は分けても、担当エージェントやチャットの分割は必須にしない。依頼された範囲から始め、承認済みの計画を最初から作り直さない。

このスキルの専用手順は配下の参照資料で完結する。共通の行動方針は [OperatingPrinciples](../../OperatingPrinciples.md)、記録する文章は [Writing Tune](../writing-tune/SKILL.md) に従う。

## Initiative・Project・Issue

- Initiativeは、継続的な案件や活動をまとめる単位。
- Projectは、完了できる成果の単位とし、Initiativeに所属させる。目的・成功条件・対象範囲を定める。
- Issueは、Project内で着手・完了を判断できる作業の単位。小さなProjectではIssueを設けずに進めてもよい。

開始時に対象Projectの所属先と範囲を確認する。既存の所属・粒度が適切ならそのまま進める。継続的な活動をProjectにしている場合や、独立した成果を詰め込んでいる場合は分け方を提案する。対象が不明なら確認し、新たなProjectやInitiativeの作成は依頼の範囲で行う。

## 全体フロー

1. [計画](references/planning.md) に沿って調査し、Description案をチャットでレビュー・修正する。承認後にLinearへ反映し、そのままIssue設計へ進む。
2. Issue案もチャットでレビュー・修正し、承認後にLinearへ反映する。草案の修正ごとにLinearへ書き込まない。
3. 人間から明示的な実装開始指示を受け、[実装](references/implementation.md) に沿って進める。計画の承認だけでは実装を始めない。
4. 成功条件と検証結果を確認し、Issue・Projectの状態とProject Updateを整えて完了を報告する。

「今回はあなたがそのまま実装まで担当して」のような指示は、担当の指定と実装開始の指示として扱う。計画レビュー前に受けた場合は必要なレビューを済ませてから着手し、指示の有効な範囲で開始許可を取り直さない。

## 運用上の判断

- 実装開始時に示された担当方法と人間レビューの方針を継続して適用する。個別の指定を優先し、判断を左右する不足だけ確認する。
- 小さな作業は自身で実装する。分離する利点がある場合にWorkerを使い、全体の整合、検証結果の確認、Linearへの反映はオーケストレーターが担う。
- 報告しながら継続できる作業を進める。人間の判断待ちは、回答に依存する作業に限る。
- 実装中のIssue追加・計画調整と、Issue・Projectの状態更新は [実装](references/implementation.md) の境界に従う。合意した範囲の更新に毎回承認を求めない。

Description、Issue、Project Updateなどを書く際は [書式](references/templates.md) を参照する。
